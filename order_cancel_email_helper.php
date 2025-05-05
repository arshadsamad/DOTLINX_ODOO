<?php
defined('BASEPATH') or exit('No direct script access allowed');

function send_order_cancel_email($order_id) {
    // Send order cancellation email to the customer
    $c_order_cancel_email = send_order_cancellation_customer_email($order_id);
    if (isset($c_order_cancel_email) && $c_order_cancel_email['error'] == true) {
        error_log('Cannot send order cancellation email to customer ? ' . $c_order_cancel_email['message']);
    }

    // Send order cancellation email to the seller
    $s_order_cancel_email = send_order_cancellation_seller_email($order_id);
    if (isset($s_order_cancel_email) && $s_order_cancel_email['error'] == true) {
        error_log('Cannot send order cancellation email to seller ? ' . $s_order_cancel_email['message']);
    }

    // Send order cancellation email to the admin
    $a_order_cancel_email = send_order_cancellation_admin_email($order_id);
    if (isset($a_order_cancel_email) && $a_order_cancel_email['error'] == true) {
        error_log('Cannot send order cancellation email to admin ? ' . $a_order_cancel_email['message']);
    }
}

function send_order_cancellation_customer_email($order_id) {
    $ci =&get_instance();
    $order = fetch_details('orders', ['id' => $order_id])[0];
    $customer = fetch_details('users', ['id' => $order['user_id']])[0];
    if (isset($customer['email']) && !empty($customer['email'])) {
        $to = $customer['email'];
        $subject = 'Order Cancellation Notification';
        $order['items'] = fetch_details('order_items', ['order_id' => $order['id']]);
        $total_item_price = 0;
        foreach ($order['items'] as $key => $order_item) {
            $order['items'][$key]['seller_name'] = fetch_details('users', ['id' => $order_item['seller_id']])[0]['username'];
            $order['items'][$key]['row_price'] = $order_item['price'] * $order_item['quantity'];
            $total_item_price += $order['items'][$key]['row_price'];
        }
        $order['total_item_price'] = $total_item_price;
        $c_address = fetch_details('addresses', ['id' => $order['address_id'], 'user_id' => $order['user_id']])[0];

        // Prepare message content
        $message = [
            'customer' => $customer,
            'order' => $order,
            'items' => $order['items'],
            'total_price' => $total_item_price,
            'c_address' => $c_address,
        ];
        return send_mail($to, $subject, $ci->load->view('admin/pages/view/order_cancellation_email_to_customer', $message, TRUE));
    }
}

function send_order_cancellation_seller_email($order_id) {
    $ci =&get_instance();
    $order = fetch_details('orders', ['id' => $order_id])[0];
    $customer = fetch_details('users', ['id' => $order['user_id']])[0];
    $order['items'] = fetch_details('order_items', ['order_id' => $order['id']]);
    $seller_ids = array_unique(array_column($order_items, 'seller_id'));
    $order['customer'] = $customer;
    $customer_name = $order['customer']['username'];
    $subject = 'Order Cancellation Notification';
    $order_link = base_url('seller/orders/edit_orders?edit_id=' . $order['id'] );
    foreach ($seller_ids as $seller_id) {
        $seller = fetch_details('users', ['id' => $seller_id])[0];
        if (isset($seller['email']) && !empty($seller['email'])) {
            $to = $seller['email'];
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
            send_mail($to, $subject, $ci->load->view('admin/pages/view/order_item_cancelled_email_to_seller', $data, TRUE));
        }
    }

    return ['error' => false, 'message' => 'Emails sent to all sellers.'];
}

function send_order_cancellation_admin_email($order_id) {
    $ci =&get_instance();

    $order = fetch_details('orders', ['id' => $order_id])[0];
    $customer = fetch_details('users', ['id' => $order['user_id']])[0];

    $subject = 'Order Cancellation Notification';
    $order['items'] = fetch_details('order_items', ['order_id' => $order['id']]);

    $total_item_price = 0;
    foreach ($order['items'] as $key => $order_item) {
        $order['items'][$key]['seller_name'] = fetch_details('users', ['id' => $order_item['seller_id']])[0]['username'];
        $order['items'][$key]['row_price'] = $order_item['price'] * $order_item['quantity'];
        $total_item_price += $order['items'][$key]['row_price'];
    }
    $order['total_item_price'] = $total_item_price;
    $c_address = fetch_details('addresses', ['id' => $order['address_id'], 'user_id' => $order['user_id']])[0];
    $order_link = base_url('admin/orders/edit_orders?edit_id=' . $order['id']);

    // Prepare email content
    $message = [
        'order' => $order,
        'customer' => $customer,
        'items' => $order['items'],
        'total_price' => $total_item_price,
        'order_link' => $order_link,
        'c_address' => $c_address,
    ];

    $system_user_permissions = fetch_details('user_permissions', ['role' => 0]);
    foreach ($system_user_permissions as $system_user_permission) {
        $system_user = fetch_details('users', ['id' => $system_user_permission['user_id']])[0];
        $message['admin_name'] = $system_user['username'];
        //$to = $web_settings['support_email'];
        $to = $system_user['email'];

        send_mail($to, $subject, $ci->load->view('admin/pages/view/order_cancellation_email_to_admin', $message, TRUE));
    }
    return ['error' => false, 'message' => 'Emails sent to all admins.'];
}
?>