<?php
defined('BASEPATH') or exit('No direct script access allowed');

function send_order_success_email($order_id) {
    // send success order fullfill email customer confirmation
    $c_order_email = send_order_confirmation_customer_email($order_id);
    if(isset($c_order_email) && $c_order_email['error'] == true) {
        error_log('Cannot send order confirmation email to customer ? ' . $c_order_email['message']);
    }

    // send success order fullfill email seller confirmation
    $s_order_email = send_order_confirmation_seller_email($order_id);
    if(isset($s_order_email) && $s_order_email['error'] == true) {
        error_log('Cannot send order confirmation email to seller ? ' . $s_order_email['message']);
    }

    // send success order fullfill email to admin
    $a_order_email = send_order_confirmation_admin_email($order_id);
    if(isset($a_order_email) && $a_order_email['error'] == true) {
        error_log('Cannot send order confirmation email to admin ? ' . $a_order_email['message']);
    }
}

function send_order_confirmation_seller_email($order_id) {
    $ci =&get_instance();
    $order = fetch_details('orders', ['id' => $order_id])[0];
    $customer = fetch_details('users', ['id' => $order['user_id']])[0];
    $order['items'] = fetch_details('order_items', ['order_id' => $order['id']]);
    $seller_ids = array_unique(array_column($order['items'], 'seller_id'));
    $order['customer'] = $customer;
    $customer_name = $order['customer']['username'];
    $order_link = base_url('seller/orders/edit_orders?edit_id=' . $order['id'] );
    foreach($seller_ids as $seller_id) {
        $seller = fetch_details('users', ['id' => $seller_id])[0];
        if (isset($seller['email']) && !empty($seller['email'])) {
            $to = $seller['email'];
            $subject = 'Order Confirmation';
            $seller_name = $seller['username'];
            $data = array(
                'order_id' => $order['id'],
                'customer_name' => $customer_name,
                'ordered_date' => $order['date_added'],
                'items' => array_filter($order['items'], fn($item) => $item['seller_id'] == $seller_id),
                'order_link' => $order_link,
                'seller_name' => $seller_name,
                'payment_status' => $order['payment_status'],
            );
            send_mail($to,  $subject, $ci->load->view('admin/pages/view/order_placed_email_to_seller', $data, TRUE));
        }
    }
    return ['error' => false, 'message' => 'Emails sent to all sellers.'];
}

function send_order_confirmation_customer_email($order_id) {
    $ci =&get_instance();
    $order = fetch_details('orders', ['id' => $order_id])[0];
    $customer = fetch_details('users', ['id' => $order['user_id']])[0];
    if(isset($customer['email']) && !empty($customer['email'])) {
        $order['customer'] = $customer;
        $to = $order['customer']['email'];
        $customer_name = $order['customer']['username'];
        $subject = 'Order Confirmation';
        $order['items'] = fetch_details('order_items', ['order_id' => $order['id']]);
        $total_item_price = 0;
        foreach($order['items'] as $key => $order_item) {
            $order['items'][$key]['seller_name'] = fetch_details('users', ['id' => $order_item['seller_id']])[0]['username'];
            $order['items'][$key]['row_price'] = $order['items'][$key]['price'] * $order['items'][$key]['quantity'];
            $total_item_price = $total_item_price + $order['items'][$key]['price'];
        }
        $order['total_item_price'] = $total_item_price;
        $c_address = fetch_details('addresses', ['id' => $order['address_id'], 'user_id' => $order['user_id']])[0];
        $message = array(
            'customer' => $order['customer'],
            'order' => $order,
            'items' => $order['items'],
            'c_address' => $c_address,
        );
        return send_mail($to,  $subject, $ci->load->view('admin/pages/view/order_placed_email_to_customer', $message, TRUE));
    }
}

function send_order_confirmation_admin_email($order_id) {
    $ci =&get_instance();
    $order = fetch_details('orders', ['id' => $order_id])[0];
    $customer = fetch_details('users', ['id' => $order['user_id']])[0];
    $order['customer'] = $customer;
    $customer_name = $order['customer']['username'];
    $subject = 'Order Confirmation';
    $order['items'] = fetch_details('order_items', ['order_id' => $order['id']]);
    $total_item_price = 0;
    foreach($order['items'] as $key => $order_item) {
        $order['items'][$key]['seller_name'] = fetch_details('users', ['id' => $order_item['seller_id']])[0]['username'];
        $order['items'][$key]['row_price'] = $order['items'][$key]['price'] * $order['items'][$key]['quantity'];
        $total_item_price = $total_item_price + $order['items'][$key]['price'];
    }
    $order['total_item_price'] = $total_item_price;
    $c_address = fetch_details('addresses', ['id' => $order['address_id'], 'user_id' => $order['user_id']])[0];
    $order_link = base_url('admin/orders/edit_orders?edit_id=' . $order['id'] );
    $message = array(
        'customer' => $order['customer'],
        'order' => $order,
        'items' => $order['items'],
        'order_link' => $order_link,
        'c_address' => $c_address,
    );
    //$web_settings = get_settings('web_settings', true);
    $system_user_permissions = fetch_details('user_permissions', ['role' => 0]);
    foreach($system_user_permissions as $system_user_permission) {
        $system_user = fetch_details('users', ['id' => $system_user_permission['user_id']])[0];
        $message['admin_name'] = $system_user['username'];
        //$to = $web_settings['support_email'];
        $to = $system_user['email'];
        send_mail($to,  $subject, $ci->load->view('admin/pages/view/order_placed_email_to_admin', $message, TRUE));
    }
    return ['error' => false, 'message' => 'Emails sent to all admins.'];
}

?>