<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Order Assigned Email</title>
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
        <div class="container my-5">
            <div class="card">
                <!-- <div class="card-header">
                <h4>ORDER ASSIGNED EMAIL TO CUSTOMER</h4>
            </div> -->
                <div class="card-body">
                    <div class="row">
                        <div class="col-sm-4 offset-sm-8">
                            <img src="<?= base_url('uploads/media/2024/MovingBazzarLogo.jpg'); ?>" alt="Admin Image" class="img-fluid" style="width: 150px; height: 150px;">
                        </div>
                    </div>
                    <p>DEAR <strong><?= $customer['username'] ?></strong>,</p>
                    <p>We wanted to let you know that your order has been assigned to a delivery man and will be on its way
                        to you shortly. Below are the details of your order</p>

                    <div class="mb-3">
                        <div class="col-sm-12">
                            <div class="row">
                                <div class="col-sm-6">
                                    <p><strong>ORDER ID: #<?= $order['id'] ?></strong></p>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <p><strong>ORDER DATE:</strong> <?= $order['date_added'] ?></p>
                                    </div>
                                    <div class="col-sm-6">
                                        <p><strong>PAYMENT METHOD:<?= $order['payment_method'] == 'COD' ? 'CASH ON DELIVERY' : 'ONLINE PAYMENT' ?></strong></p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <p><strong>PAYMENT STATUS:</strong> <?= $order['payment_status'] == 'success' ? 'PAID' : 'UNPAID' ?></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="mb-3">
                        <h5>Shipping Address</h5>
                        <address>
                            <?= $c_address['address'] ?>,<br>
                            <?= $c_address['area'] ?>,<br>
                            <?= $c_address['city'] ?>, <?= $c_address['state'] ?>,<br>
                            <?= $c_address['country'] ?>.<br>
                            <strong>Phone:</strong> +971 <?= $c_address['mobile'] ?>
                        </address>
                    </div>

                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead class="table-secondary">
                                <tr>
                                    <th>SN</th>
                                    <th>Item</th>
                                    <th>Seller</th>
                                    <th>Unit Price (AED)</th>
                                    <th>Qty</th>
                                    <th>Total (AED)</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($items as $key => $item) { ?>
                                <tr>
                                    <td><?= ($key + 1) ?></td>
                                    <td><?= $item['product_name'] ?></td>
                                    <td><?= $item['seller_name'] ?></td>
                                    <td><?= $item['price'] ?></td>
                                    <td><?= (isset($item['quantity'])) ? $item['quantity'] : $item['qty'] ?></td>
                                    <td><?= $item['row_price'] ?></td>
                                </tr>
                                <?php } ?>
                            </tbody>
                        </table>
                    </div>

                    <div class="mt-3 row justify-content-end">
                        <div class="col-lg-3">
                            <p><strong>ITEM PRICE:</strong> <?= $order['total_item_price'] ?> <?= $settings['currency'] ?>(VAT INCL)</p>
                            <p><strong>DEL CHARGE:</strong> <?= $order['delivery_charge']?> <?= $settings['currency'] ?></p>
                            <p><strong>TOTAL:</strong> <?= $order['total_payable']?> <?= $settings['currency'] ?></p>
                        </div>
                    </div>

                    <p>DELIVERY MAN NAME: <?= $delivery_man['username'] ?></p>
                    <p>DELIVERY MAN PHONE: <?= $delivery_man['mobile'] ?></p>


                    <p class="mt-5">Thank you for choosing MOVING BAZAAR.COM</p>
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