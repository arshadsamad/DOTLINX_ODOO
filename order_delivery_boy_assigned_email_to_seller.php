<?php $settings = get_settings('system_settings', true); ?>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Order Delivery Boy Assigned Email</title>
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
                <h4>ORDER DELIVERY BOY ASSIGNED EMAIL TO SELLER</h4>
            </div> -->
                <div class="card-body">
                    <div class="row">
                        <div class="col-sm-4 offset-sm-8">
                            <img src="<?= base_url('uploads/media/2024/MovingBazzarLogo.jpg'); ?>" alt="Admin Image" class="img-fluid" style="width: 150px; height: 150px;">
                        </div>
                    </div>
                    <p>DEAR <strong><strong> <?= $seller['username'] ?></strong>,</p>
                    <p> A delivery person has been assigned to the following order on movingbazaar.com. Please find the delivery details below:</p>

                    <div class="mb-3">
                        <p><strong>ORDER ID: #<?= $order['id'] ?></strong></p>
                        <p><strong>Order Date:</strong> <?= $order['date_added'] ?></p>
                        <p><strong>CUSTOMER NAME:</strong><?= $customer['username']?></p>
                    </div>


                    <div class="table-responsive">
                        <h5>ITEMS ORDERED</h5>
                        <table class="table table-bordered">
                            <thead class="table-secondary">
                                <tr>
                                    <th>SN</th>
                                    <th>Item</th>
                                    <th>Qty</th>
                                </tr>
                            </thead>
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

                    <div class="mb-3">
                        <p><strong>DELIVERY BOY DETAILS:</strong></p>
                        <p><strong>NAME:</strong> <?= $delivery_man['username'] ?></p>
                        <p><strong>CONTACT NUMBER:</strong> <?= $delivery_man['mobile'] ?></p>
                    </div>

                    <!-- <p>You can view and manage this order using the following link:</p>
                    <p><a href="<?= $order_link ?>" class="btn btn-primary">View Order</a></p> -->
                    <p>THANKS REGARDS,</p>
                    <div class="row justify-content-end">
                        <p class="mt-3 col-md-11">MOVING BAZAAR</p>
                    </div>
                </div>

            </div>

            <div class="card-footer text-center text-muted">
                © <?= date('Y') ?> MovingBazaar.com - All Rights Reserved
            </div>
        </div>
        </div>
    </body>

</html>