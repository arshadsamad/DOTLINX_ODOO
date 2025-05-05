<?php
// Restrict direct access
defined(constant_name: 'BASEPATH') or exit('No direct script access allowed');

function send_order_assigned_email($order_id, $delivery_boy_id) {
    // Send order assigned email to the delivery man
    $d_order_email = send_order_assigned_email_to_delivery_man($order_id, $delivery_boy_id);
    if (isset($d_order_email) && $d_order_email['error'] == true) {
        error_log('Cannot send order assigned email to delivery man: ' . $d_order_email['message']);
    }

    // Send order assigned email to the customer
    $c_order_email = send_order_assigned_to_deliveryman_email_to_customer($order_id, $delivery_boy_id);
    if (isset($c_order_email) && $c_order_email['error'] == true) {
        error_log('Cannot send order assigned email to customer: ' . $c_order_email['message']);
    }

    // Send order assigned email to the seller
    $s_order_email = send_order_deliveryman_assigned_to_seller_email($order_id, $delivery_boy_id);
    if (isset($s_order_email) && $s_order_email['error'] == true) {
        error_log('Cannot send order assigned email to seller: ' . $s_order_email['message']);
    }
}

function send_order_assigned_email_to_delivery_man($order_id, $delivery_boy_id) {
    $ci =& get_instance();
    $order = fetch_details('orders', ['id' => $order_id])[0];
    $delivery_man = fetch_details('users', ['id' => $delivery_boy_id])[0];
    $customer = fetch_details('users', ['id' => $order['user_id']])[0];
    if (isset($delivery_man['email']) && !empty($delivery_man['email'])) {
        $to = $delivery_man['email'];
        $subject = 'Order Assigned Notification';

        $order['items'] = fetch_details('order_items', ['order_id' => $order['id']]);
        $total_item_price = 0;
        foreach($order['items'] as $key => $order_item) {
            $order['items'][$key]['seller_name'] = fetch_details('users', ['id' => $order_item['seller_id']])[0]['username'];
            $order['items'][$key]['row_price'] = $order['items'][$key]['price'] * $order['items'][$key]['quantity'];
            $total_item_price = $total_item_price + $order['items'][$key]['price'];
        }
        $order['total_item_price'] = $total_item_price;
        $c_address = fetch_details('addresses', ['id' => $order['address_id'], 'user_id' => $order['user_id']])[0];

        $data = [
            'customer' => $customer,
            'order' => $order,
            'delivery_man_name' => $delivery_man['username'],
            'assigned_date' => $order['date_modified'],
            'items' => $order['items'],
            'c_address' => $c_address,
        ];

        return send_mail($to, $subject, $ci->load->view('admin/pages/view/order_assigned_email_to_delivery_man', $data, true));
    }
    return ['error' => true, 'message' => 'Delivery man email not found.'];
}

function send_order_assigned_to_deliveryman_email_to_customer($order_id, $delivery_boy_id) {
    $ci =& get_instance();
    $order = fetch_details('orders', ['id' => $order_id])[0];
    $customer = fetch_details('users', ['id' => $order['user_id']])[0];

    if (isset($customer['email']) && !empty($customer['email'])) {
        $to = $customer['email'];
        $subject = 'Order Assigned to Delivery Man';

        $delivery_man = fetch_details('users', ['id' => $delivery_boy_id])[0];

        $order['items'] = fetch_details('order_items', ['order_id' => $order['id']]);
        $total_item_price = 0;
        foreach($order['items'] as $key => $order_item) {
            $order['items'][$key]['seller_name'] = fetch_details('users', ['id' => $order_item['seller_id']])[0]['username'];
            $order['items'][$key]['row_price'] = $order['items'][$key]['price'] * $order['items'][$key]['quantity'];
            $total_item_price = $total_item_price + $order['items'][$key]['price'];
        }
        $order['total_item_price'] = $total_item_price;
        $c_address = fetch_details('addresses', ['id' => $order['address_id'], 'user_id' => $order['user_id']])[0];

        $data = [
            'customer' => $customer,
            'order' => $order,
            'delivery_man' => $delivery_man,
            'assigned_date' => $order['date_modified'],
            'items' => $order['items'],
            'c_address' => $c_address,
        ];

        return send_mail($to, $subject, $ci->load->view('admin/pages/view/order_assingned_to_deliveryman_email_to_customer', $data, true));
    }
    return ['error' => true, 'message' => 'Customer email not found.'];
}

function send_order_deliveryman_assigned_to_seller_email($order_id, $delivery_boy_id) {
    $ci =& get_instance();
    $order = fetch_details('orders', ['id' => $order_id])[0];
    $order_items = fetch_details('order_items', ['order_id' => $order['id']]);
    $customer = fetch_details('users', ['id' => $order['user_id']])[0];
    $sellers = array_unique(array_column($order_items, 'seller_id'));
    foreach ($sellers as $seller_id) {
        $seller = fetch_details('users', ['id' => $seller_id])[0];
        if (isset($seller['email']) && !empty($seller['email'])) {
            $to = $seller['email'];
            $subject = 'Order Assigned to Delivery Man';
            $delivery_man = fetch_details('users', ['id' => $delivery_boy_id])[0];
            $order['items'] = fetch_details('order_items', ['order_id' => $order['id']]);
            $data = [
                'customer' => $customer,
                'order' => $order,
                'delivery_man' => $delivery_man,
                'assigned_date' => $order['date_modified'],
                'items' => array_filter($order['items'], fn($item) => $item['seller_id'] == $seller_id),
                'seller' => $seller
            ];
            send_mail($to, $subject, $ci->load->view('admin/pages/view/order_delivery_boy_assigned_email_to_seller', $data, true));
        }
    }
    return ['error' => false, 'message' => 'Emails sent to all sellers.'];
}
?>