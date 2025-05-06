<?php $settings = get_settings('system_settings', true); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:o="urn:schemas-microsoft-com:office:office" style="width:100%;font-family:'open sans', 'helvetica neue', helvetica, arial, sans-serif;-webkit-text-size-adjust:100%;-ms-text-size-adjust:100%;padding:0;Margin:0">

    <head>
        <meta charset="UTF-8">
        <meta content="width=device-width, initial-scale=1" name="viewport">
        <meta name="x-apple-disable-message-reformatting">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="telephone=no" name="format-detection">
        <link rel="icon" type="image/ico" href="#">
        <title>Order Placed Email</title>

        <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,400i,700,700i" rel="stylesheet">
        <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }

        th {
            border: 1px solid #ddd;
            text-align: center;
        }

        td {
            border: 1px solid #ddd;
            text-align: center;
        }
        </style>
    </head>

    <body style="background-color: #f8f9fa;">
        <div>
            <div>
                <!-- <div>
                    <h4>ORDER PLACED EMAIL TO SELLER</h4>
                </div> -->
                <div>
                    <div>
                        <div>
                            <img src="<?= base_url('uploads/media/2024/MovingBazzarLogo.jpg'); ?>" alt="Admin Image" style="width: 150px; height: 150px;">
                        </div>
                    </div>
                    <p>DEAR SELLER<strong> <?= $seller_name ?></strong>,</p>
                    <p> A new order has been placed on movingbazaar.com, and the following items need to be prepared for shipment. Here are the details:</p>
                    <div>
                        <p><strong>ORDER ID: #<?= $order_id ?></strong></p>
                        <p><strong>ORDER DATE:</strong> <?= $ordered_date ?></p>
                        <!-- <p><strong>PAYMENT STATUS:</strong> <?= $payment_status == 'success' ? 'PAID' : 'UNPAID' ?></p> -->
                        <p><strong>CUSTOMER NAME:</strong> <?= $customer_name ?></p>
                    </div>
                    <div>
                        <h5>ITEMS ORDERED:</h5>
                        <table>
                            <thead>
                                <tr>
                                    <th>SN</th>
                                    <th>Item</th>
                                    <th>Qty</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($items as $key => $item) { ?>
                                <tr>
                                    <td><?= ($key + 1) ?></td>
                                    <td><?= $item['product_name'] ?></td>
                                    <td><?= (isset($item['quantity'])) ? $item['quantity'] : $item['qty'] ?></td>
                                </tr>
                                <?php } ?>
                            </tbody>
                        </table>
                    </div>
                    <p>You can view and manage this order using the following link:</p>
                    <p><a href="<?= $order_link ?>" class="btn btn-primary">View Order</a></p>
                    <p>THANKS REGARDS,</p>
                    <div class="row justify-content-end">
                        <p class="mt-3 col-md-11">MOVING BAZAAR</p>
                    </div>
                </div>
                <div class="card-footer text-center text-muted">
                    © <?= date('Y') ?> MovingBazaar.com - All Rights Reserved
                </div>
            </div>
        </div>
    </body>

</html>