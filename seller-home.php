<?php
$showBanner = false; // always hide, show only product listing
?>
<section class="mt-3 sticky-header-wrapper">
    <div class="container pb-md-1 pt-md-14 py-lg-1 overflow-hidden">
        <div class="row align-items-center">

            <!-- Swiper -->
            <div class="swiper-container category-swiper" data-dots="true">
                <div class="my-4 featured-section-title">
                    <div class="align-items-center d-flex justify-content-between">
                        <div class="default_heading">
                            <h3 class="mb-0 section-title">Categories</h3>
                        </div>
                    </div>
                </div>
                <div class="swiper-wrapper swiper-slide-category">
                   

                    <?php foreach ($categories as $key => $row) {
                        foreach ($seller_category as $cat) {
                            if($row['id'] == $cat) { ?>
                        <div class="swiper-slide swiper-slide-category" >
                            <a href="<?= base_url('sellers/' . $seller_slug . '/products/category/' . html_escape($row['slug'])) ?>" class="text-decoration-none">
                                <img class="lazy rounded" src="<?= base_url('assets/front_end/modern/img/product-placeholder.jpg') ?>" data-src="<?= $row['image'] ?>" alt="<?= html_escape($row['name']) ?>" />
                                <h6 class="fs-14 mb-0"><?= html_escape($row['name']) ?></h6>
                            </a>
                        </div>
                    <?php } } }?>

                </div>
                <div class="swiper-controls">
                    <div class="swiper-pagination slide-swiper-pagination swiper-pagination-clickable swiper-pagination-bullets swiper-pagination-horizontal">
                        <span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 1"></span>
                        <span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 2"></span>
                        <span class="swiper-pagination-bullet swiper-pagination-bullet-active" tabindex="0" role="button" aria-label="Go to slide 3" aria-current="true"></span>
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>

<?php if($showBanner) {?>
<section class="slider container">
    <div class="pb-md-1 ">
        <!-- <div class="row align-items-center"> /.row -->
        <div class="swiper-container swiper-slide-container overflow-hidden" data-margin="30" data-nav="true" data-dots="true" data-items-xl="3" data-items-md="2" data-items-xs="1">
            <div class="swiper-wrapper">
                <?php if (isset($sliders) && !empty($sliders)) { ?>
                    <?php foreach ($sliders as $row) { ?>
                       <!-- <div class="swiper-slide">
                            <div class="slide-img">
                                <img src="<?= base_url($row['image']) ?>" alt="Offer Slider" style="object-fit: cover;">
                            </div>
                        </div>-->
                    <?php } ?>
                <?php } ?>
            </div>
            <!-- Add Pagination -->
            <div class="swiper-controls">
                <div class="swiper-pagination slide-swiper-pagination swiper-pagination-clickable swiper-pagination-bullets swiper-pagination-horizontal">
                    <span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 1"></span>
                    <span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 2"></span>
                    <span class="swiper-pagination-bullet swiper-pagination-bullet-active" tabindex="0" role="button" aria-label="Go to slide 3" aria-current="true"></span>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- sections -->
<?php } ?> 

<?php if ($showBanner && isset($brands) && !empty($brands) && $brands != []) { ?>
   <!-- <section class="mt-3">
        <div class="container pb-md-1 pt-md-14 py-lg-1 overflow-hidden">
            <div class="row align-items-center">
                <div class="my-4 featured-section-title">
                    <div class="d-md-flex justify-content-md-between">
                        <div>
                            <h3 class="text-dark mb-0"><?= !empty($this->lang->line('brands')) ? $this->lang->line('brands') : 'Brands'; ?></h3>
                        </div>
                        <div>
                            <a href="<?= base_url('sellers/' . $seller_slug . '/brands' ) ?>" class="hover text-decoration-none">
                                <span> <?= !empty($this->lang->line('see_all')) ? $this->lang->line('see_all') : 'See All' ?></span>
                                <i class="uil uil-arrow-right"></i>
                            </a>
                        </div>
                    </div>
                </div>

              Swiper
                <div class="swiper-container category-swiper " data-dots="true">
                    <div class="swiper-wrapper">
                        <?php $flag = 0;
                        foreach ($brands as $key => $row) { 
                            if($row['seller_id'] == $seller_data[0]['user_id']){ $flag = 1;?>
                            <div class="swiper-slide swiper-slide-category">
                                <a href="<?= base_url('sellers/' . $seller_slug . '/products?brand=' . html_escape($row['brand_slug'])) ?>" class="text-decoration-none">
                                    <img class="lazy" src="<?= base_url('assets/front_end/modern/img/product-placeholder.jpg') ?>" data-src="<?= base_url() . $row['brand_img'] ?>" alt="<?= html_escape($row['brand_name']) ?>" />
                                    <h6 class="fs-14 mb-0"><?= html_escape($row['brand_name']) ?></h6>
                                </a>
                            </div>
                        <?php } } if($flag == 0){ ?>
                            <div class="col-12 text-center">
                                <h1 class="h2"><?= !empty($this->lang->line('no_brands_found')) ? $this->lang->line('no_brands_found') : 'No Brands Found.' ?></h1>
                            </div>
                        <?php } ?>
                    </div>
                    <div class="swiper-controls">
                        <div class="swiper-pagination category-swiper-pagination swiper-pagination-clickable swiper-pagination-bullets swiper-pagination-horizontal">
                            <span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 1"></span>
                            <span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 2"></span>
                            <span class="swiper-pagination-bullet swiper-pagination-bullet-active" tabindex="0" role="button" aria-label="Go to slide 3" aria-current="true"></span>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>-->
<?php } ?>

<!-- sections -->
<?php if($showBanner) { ?>
<section class="container main-content">

    <?php $offer_counter = 0;
    $offers =  get_offers();
    // echo var_dump($sections[1]);
    foreach ($sections as $count_key => $row) {
        if (!empty($row['product_details'])) {
            if ($row['style'] == 'default') {
                if ($count_key != 0) {
                    $offer_counter++;
                    if (!empty($offers) && !empty($offers[$count_key - 1])) { ?>
                       <!-- <div class="offer-img">
                            <img class="img-fluid  my-4 rounded offer-image lazy" data-src="<?= base_url($offers[$count_key - 1]['image']) ?>" alt="Offer image" src="https://placehold.co/1290x268?text=Loading%20Offers..%20.&font=Montserrat" style="object-fit: cover;">
                        </div> -->
                <?php }
                } ?>

                <!-- Default style -->
                <section class="wrapper mt-4">
                    <div class="my-4 featured-section-title">
                        <div class="align-items-center d-flex justify-content-between">
                            <div class="default_heading">
                                <h3 class="mb-0 section-title"><?= ucfirst($row['title']) ?></h3>
                                <h6 class="title-sm text-muted"><?= $row['short_description']; ?></h6>
                            </div>
                            <div>
                            <!-- /sellers/kanti-sweets/products/section/5/recently-added -->
                                <a href="<?= base_url('sellers/' . $seller_slug . '/products/section/' . $row['id'] . '/' . $row['slug']) ?>" class="hover text-decoration-none"><?= !empty($this->lang->line('view_more')) ? $this->lang->line('view_more') : 'View More' ?>
                                    <i class="uil uil-arrow-right"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="grid grid-view shop mb-13">
                        <div class="row ">
                            <?php if (isset($row['product_details']) && !empty($row['product_details'])) { ?>
                                <?php
                                $i = 0;
                                $flag = 0;
                                if (count($row['product_details']) > 0) { 
                                    foreach ($row['product_details'] as $product_row) {
                                        if($product_row['seller_slug'] == $seller_slug) { $flag = 1;
                                        if ($i == 4) {
                                            break;
                                        }
                                ?>
                                        <div class="project item col-6 col-xl-3 default-style mb-3">
                                            <figure class="rounded d-flex justify-content-center">
                                                <div>
                                                <?php if(isset($seller_slug) && !empty($seller_slug) && $seller_slug != '') { ?>
                                                    <a href="<?= base_url('sellers/' . $product_row['seller_slug'] . '/products/details/' . $product_row['slug']) ?>">
                                                        <img class="lazy fig_image" src="<?= base_url('assets/front_end/modern/img/product-placeholder.jpg') ?>" data-src="<?= $product_row['image_sm'] ?>" alt="<?= $product_row['name'] ?>" style="object-fit: cover;" />
                                                    </a>
                                                <?php } else { ?>
                                                    <a href="<?= base_url('products/details/' . $product_row['slug']) ?>">
                                                        <img class="lazy fig_image" src="<?= base_url('assets/front_end/modern/img/product-placeholder.jpg') ?>" data-src="<?= $product_row['image_sm'] ?>" alt="<?= $product_row['name'] ?>" style="object-fit: cover;" />
                                                    </a>
                                                <?php } ?>
                                                </div>

                                                <a class="item-like text-decoration-none add-to-fav-btn 
                                            <?= ($product_row['is_favorite'] == 1) ? 'fa fa-heart' : 'fa fa-heart-o' ?>  
                                            " href="#" data-bs-toggle="white-tooltip" title="<?= !empty($this->lang->line('add_to_favorite')) ? $this->lang->line('add_to_favorite') : 'Add to Favorite' ?>" data-product-id="<?= $product_row['id'] ?>" style="color: <?= ($product_row['is_favorite'] == 1) ? 'red' : '' ?>">
                                                    <i class=""></i>
                                                </a>

                                                <a href="#" class="quick-view-btn item-view text-decoration-none" data-bs-toggle="white-tooltip" title="<?= !empty($this->lang->line('quick_view')) ? $this->lang->line('quick_view') : 'Quick View' ?>" data-tip="<?= !empty($this->lang->line('quick_view')) ? $this->lang->line('quick_view') : 'Quick View' ?>" data-product-id="<?= $product_row['id'] ?>" data-product-variant-id="<?= $product_row['variants'][0]['id'] ?>" data-izimodal-open="#quick-view">
                                                    <i class="uil uil-eye"></i>
                                                </a>
                                                <?php
                                                if (count($product_row['variants']) <= 1) {
                                                    $variant_id = $product_row['variants'][0]['id'];
                                                    $modal = "";
                                                } else {
                                                    $variant_id = "";
                                                    $modal = "#quick-view";
                                                }
                                                ?>

                                                <?php
                                                if (count($product_row['variants']) <= 1) {
                                                    $variant_id = $product_row['variants'][0]['id'];
                                                } else {
                                                    $variant_id = "";
                                                }
                                                ?>
                                                <a href="#" class="compare item-compare text-decoration-none" data-tip="<?= !empty($this->lang->line('compare')) ? $this->lang->line('compare') : 'Compare' ?>" data-bs-toggle="white-tooltip" title="compare" data-product-id="<?= $product_row['id'] ?>" data-product-variant-id="<?= $variant_id ?>">
                                                    <i class="uil uil-exchange-alt"></i>
                                                </a>

                                                <?php if (isset($product_row['min_max_price']['special_price']) && $product_row['min_max_price']['special_price'] != '' && $product_row['min_max_price']['special_price'] != 0 && $product_row['min_max_price']['special_price'] < $product_row['min_max_price']['min_price']) { ?>
                                                    <span class="avatar bg-pink d-flex position-absolute text-uppercase text-white sale_tag">
                                                        <span class=""><?= !empty($this->lang->line('sale')) ? $this->lang->line('sale') : 'Sale' ?></span>
                                                    </span>
                                                <?php } ?>

                                                <?php $variant_price = ($product_row['variants'][0]['special_price'] > 0 && $product_row['variants'][0]['special_price'] != '') ? $product_row['variants'][0]['special_price'] : $product_row['variants'][0]['price'];
                                                $data_min = (isset($product_row['minimum_order_quantity']) && !empty($product_row['minimum_order_quantity'])) ? $product_row['minimum_order_quantity'] : 1;
                                                $data_step = (isset($product_row['minimum_order_quantity']) && !empty($product_row['quantity_step_size'])) ? $product_row['quantity_step_size'] : 1;
                                                $data_max = (isset($product_row['total_allowed_quantity']) && !empty($product_row['total_allowed_quantity'])) ? $product_row['total_allowed_quantity'] : 0;
                                                ?>
                                                <a href="#" class="add_to_cart item-cart text-decoration-none" data-product-id="<?= $product_row['id'] ?>" data-product-variant-id="<?= $variant_id ?>" data-product-slug="<?= $product_row['slug'] ?>" data-product-title="<?= $product_row['name'] ?>" data-product-image="<?= $product_row['image']; ?>" data-product-price="<?= $variant_price; ?>" data-min="<?= $data_min; ?>" data-step="<?= $data_step; ?>" data-product-description="<?= short_description_word_limit(output_escaping(str_replace('\r\n', '&#13;&#10;', strip_tags($product_row['short_description'])))); ?>" data-izimodal-open="<?= $modal ?>">
                                                    <i class="uil uil-shopping-bag"></i>&nbsp;<?= !empty($this->lang->line('add_to_cart')) ? $this->lang->line('add_to_cart') : 'Add To Cart' ?></a>

                                            </figure>
                                            <div class="post-header text-center mt-3">
                                                <input id="input" name="rating" class="rating rating-loading d-none" data-size="xs" value="<?= $product_row['rating'] ?>" data-show-clear="false" data-show-caption="false" readonly>
                                                <!-- </div> -->
                                                <h4 class="title post-title m-0 mt-2" title="<?= output_escaping(str_replace('\r\n', '&#13;&#10;', $product_row['name'])) ?>" style="font-size: 16px;">
                                                <?php if(isset($seller_slug) && !empty($seller_slug) && $seller_slug != '') { ?>
                                                    <a class="link-dark text-decoration-none" href="<?= base_url('sellers/' . $product_row['seller_slug'] . '/products/details/' . $product_row['slug']) ?>"><?= short_description_word_limit(output_escaping(str_replace('\r\n', '&#13;&#10;', strip_tags($product_row['name']))), 25) ?></a>
                                                <?php } else { ?>
                                                    <a class="link-dark text-decoration-none" href="<?= base_url('products/details/' . $product_row['slug']) ?>"><?= short_description_word_limit(output_escaping(str_replace('\r\n', '&#13;&#10;', strip_tags($product_row['name']))), 25) ?></a>
                                                <?php } ?>
                                                </h4>
                                                <?php
                                                if (($product_row['variants'][0]['special_price'] < $product_row['variants'][0]['price']) && ($product_row['variants'][0]['special_price'] != 0)) { ?>
                                                    <p class="mb-0 price text-muted">
                                                        <span id="price">
                                                            <?php echo $settings['currency'] ?>
                                                            <?php
                                                            $price = $product_row['variants'][0]['special_price'];
                                                            echo format_price($price);
                                                            ?>
                                                        </span>
                                                        <sup>
                                                            <span class="special-price striped-price text-danger" id="product-striped-price-div">
                                                                <s id="striped-price">
                                                                    <?php echo $settings['currency'] ?>
                                                                    <?php $price = $product_row['variants'][0]['price'];
                                                                    echo format_price($price);
                                                                    // echo $price;
                                                                    ?>
                                                                </s>
                                                            </span>
                                                        </sup>
                                                    </p>
                                                <?php } else { ?>
                                                    <p class="mb-0 price text-muted">
                                                        <span id="price">
                                                            <?php echo $settings['currency'] ?>
                                                            <?php
                                                            $price = $product_row['variants'][0]['price'];
                                                            echo format_price($price);
                                                            ?>
                                                        </span>
                                                    </p>
                                                <?php } ?>
                                            </div>
                                            <!-- /.post-header -->
                                        </div>

                                <?php $i++;
                                    } }if($flag == 0){ ?>
                                        <div class="col-12 text-center">
                                            <h1 class="h2"><?= !empty($this->lang->line('no_product_found')) ? $this->lang->line('no_product_found') : 'No Products Found.' ?></h1>
                                        </div>
                                   <?php }   
                                } ?>
                            <?php } ?>
                            <!-- /.item -->

                            <!-- /.item -->
                        </div>
                        <!-- /.row -->
                    </div>
                </section>


                <!-- style 1  -->
                <?php } else if ($row['style'] == 'style_1') { 
                if ($count_key != 0) {
                    if (!empty($offers) && !empty($offers[$count_key - 1])) { ?>
                     <!--   <div class="offer-img">
                            <img class="img-fluid lazy my-4 rounded offer-image" data-src="<?= base_url($offers[$count_key - 1]['image']) ?>" alt="Offer image" src="https://placehold.co/1290x268?text=Loading%20Offers..%20.&font=Montserrat" style="object-fit: cover;">
                        </div> -->
                <?php }
                }
                ?>

                <section class="mt-md-5 wrapper">
                    <div>
                        <div class="align-items-center gx-xl-12 row">
                            <div class="col-lg-9">
                                <div class="swiper-container text-center" data-margin="30" data-dots="true" data-items-xl="3" data-items-md="2" data-items-xs="1">
                                    <div class="swiper mySwiper swiper-initialized swiper-horizontal swiper-pointer-events mb-4">
                                        <div class="swiper-wrapper">
                                            <?php $product_count = count($row['product_details']) - 1; ?>
                                            <?php
                                            $i = 0;
                                            $flag = 0;
                                            
                                            if (count($row['product_details']) > 0) {
                                                foreach ($row['product_details'] as $key => $product_row) {
                                                    if($product_row['seller_slug'] == $seller_slug) { $flag = 1;
                                                    if ($i == 8) {
                                                        break;
                                                    }
                                            ?>
                                                    <?php if ($key >= 0) { ?>
                                                        <div class="swiper-slide shadow-xl product-bg" style="width: 280px; margin-right: 30px;">
                                                            <figure class="rounded ">
                                                                <div>
                                                                <?php if(isset($seller_slug) && !empty($seller_slug) && $seller_slug != '') { ?>
                                                                    <a href="<?= base_url('sellers/' . $product_row['seller_slug'] . '/products/details/' . $product_row['slug']) ?>">
                                                                        <img class="lazy fig_image" src="<?= base_url('assets/front_end/modern/img/product-placeholder.jpg') ?>" data-src="<?= $product_row['image_sm'] ?>" alt="<?= $product_row['name'] ?>" style="object-fit: cover;">
                                                                    </a>
                                                                <?php } else { ?>
                                                                    <a href="<?= base_url('products/details/' . $product_row['slug']) ?>">
                                                                        <img class="lazy fig_image" src="<?= base_url('assets/front_end/modern/img/product-placeholder.jpg') ?>" data-src="<?= $product_row['image_sm'] ?>" alt="<?= $product_row['name'] ?>" style="object-fit: cover;">
                                                                    </a>
                                                                <?php } ?>
                                                                </div>

                                                                <a class="item-like text-decoration-none add-to-fav-btn 
                                                            <?= ($product_row['is_favorite'] == 1) ? 'fa fa-heart' : 'fa fa-heart-o' ?>  
                                                            " href="#" data-bs-toggle="white-tooltip" title="<?= !empty($this->lang->line('add_to_favorite')) ? $this->lang->line('add_to_favorite') : 'Add to Favorite' ?>" data-product-id="<?= $product_row['id'] ?>" style="color: <?= ($product_row['is_favorite'] == 1) ? 'red' : '' ?>">
                                                                    <i class=""></i>
                                                                </a>

                                                                <a href="#" class="quick-view-btn item-view text-decoration-none" data-bs-toggle="white-tooltip" title="<?= !empty($this->lang->line('quick_view')) ? $this->lang->line('quick_view') : 'Quick View' ?>" data-tip="<?= !empty($this->lang->line('quick_view')) ? $this->lang->line('quick_view') : 'Quick View' ?>" data-tip="<?= !empty($this->lang->line('quick_view')) ? $this->lang->line('quick_view') : 'Quick View' ?>" data-product-id="<?= $product_row['id'] ?>" data-product-variant-id="<?= $product_row['variants'][0]['id'] ?>" data-izimodal-open="#quick-view">
                                                                    <i class="uil uil-eye"></i>
                                                                </a>
                                                                <?php
                                                                if (count($product_row['variants']) <= 1) {
                                                                    $variant_id = $product_row['variants'][0]['id'];
                                                                    $modal = "";
                                                                } else {
                                                                    $variant_id = "";
                                                                    $modal = "#quick-view";
                                                                }
                                                                ?>

                                                                <?php
                                                                if (count($product_row['variants']) <= 1) {
                                                                    $variant_id = $product_row['variants'][0]['id'];
                                                                } else {
                                                                    $variant_id = "";
                                                                }
                                                                ?>
                                                                <a href="#" class="compare item-compare text-decoration-none" data-bs-toggle="white-tooltip" title="Compare" data-tip="<?= !empty($this->lang->line('quick_view')) ? $this->lang->line('quick_view') : 'Quick View' ?>" data-tip="<?= !empty($this->lang->line('compare')) ? $this->lang->line('compare') : 'Compare' ?>" data-product-id="<?= $product_row['id'] ?>" data-product-variant-id="<?= $variant_id ?>">
                                                                    <i class="uil uil-exchange-alt"></i>
                                                                </a>

                                                                <?php if (isset($product_row['min_max_price']['special_price']) && $product_row['min_max_price']['special_price'] != '' && $product_row['min_max_price']['special_price'] != 0 && $product_row['min_max_price']['special_price'] < $product_row['min_max_price']['min_price']) { ?>
                                                                    <span class="avatar bg-pink d-flex position-absolute text-uppercase text-white sale_tag">
                                                                        <span class=""><?= !empty($this->lang->line('sale')) ? $this->lang->line('sale') : 'Sale' ?></span>
                                                                    </span>
                                                                <?php } ?>

                                                                <div class="card-body my-4">
                                                                    <input id="input" name="rating" class="rating rating-loading d-none" data-size="xs" value="<?= $product_row['rating'] ?>" data-show-clear="false" data-show-caption="false" readonly>
                                                                    <div class="product-content  mt-2">
                                                                        <h4 class="title post-title m-0" title="<?= output_escaping(str_replace('\r\n', '&#13;&#10;', $product_row['name'])) ?>" style="font-size: 16px;">
                                                                        <?php if(isset($seller_slug) && !empty($seller_slug) && $seller_slug != '') { ?>
                                                                            <a class="link-dark text-decoration-none" href="<?= base_url('sellers/' . $product_row['seller_slug'] . '/products/details/' . $product_row['slug']) ?>"><?= short_description_word_limit(output_escaping(str_replace('\r\n', '&#13;&#10;', strip_tags($product_row['name'])))) ?></a>
                                                                        <?php } else { ?>
                                                                            <a class="link-dark text-decoration-none" href="<?= base_url('products/details/' . $product_row['slug']) ?>"><?= short_description_word_limit(output_escaping(str_replace('\r\n', '&#13;&#10;', strip_tags($product_row['name'])))) ?></a>
                                                                        <?php } ?>
                                                                        </h4>
                                                                        <?php
                                                                        if (($product_row['variants'][0]['special_price'] < $product_row['variants'][0]['price']) && ($product_row['variants'][0]['special_price'] != 0)) { ?>
                                                                            <p class="mb-0 price text-muted">
                                                                                <span id="price">
                                                                                    <?php echo $settings['currency'] ?>
                                                                                    <?php
                                                                                    $price = $product_row['variants'][0]['special_price'];
                                                                                    echo format_price($price);
                                                                                    ?>
                                                                                </span>
                                                                                <sup>
                                                                                    <span class="special-price striped-price text-danger" id="product-striped-price-div">
                                                                                        <s id="striped-price">
                                                                                            <?php echo $settings['currency'] ?>
                                                                                            <?php $price = $product_row['variants'][0]['price'];
                                                                                            echo format_price($price);
                                                                                            // echo $price;
                                                                                            ?>
                                                                                        </s>
                                                                                    </span>
                                                                                </sup>
                                                                            </p>
                                                                        <?php } else { ?>
                                                                            <p class="mb-0 price text-muted">
                                                                                <span id="price">
                                                                                    <?php echo $settings['currency'] ?>
                                                                                    <?php
                                                                                    $price = $product_row['variants'][0]['price'];
                                                                                    echo format_price($price);
                                                                                    ?>
                                                                                </span>
                                                                            </p>
                                                                        <?php } ?>
                                                                        <!-- <a href="#" class="add_to_cart  btn btn-sm btn-outline-primary rounded-pill mt-2"><i class="uil uil-shopping-bag"></i>&nbsp; Add to Cart</a> -->

                                                                        <?php $variant_price = ($product_row['variants'][0]['special_price'] > 0 && $product_row['variants'][0]['special_price'] != '') ? $product_row['variants'][0]['special_price'] : $product_row['variants'][0]['price'];
                                                                        $data_min = (isset($product_row['minimum_order_quantity']) && !empty($product_row['minimum_order_quantity'])) ? $product_row['minimum_order_quantity'] : 1;
                                                                        $data_step = (isset($product_row['minimum_order_quantity']) && !empty($product_row['quantity_step_size'])) ? $product_row['quantity_step_size'] : 1;
                                                                        $data_max = (isset($product_row['total_allowed_quantity']) && !empty($product_row['total_allowed_quantity'])) ? $product_row['total_allowed_quantity'] : 0;
                                                                        ?>
                                                                        <a href="#" class="add_to_cart  btn btn-xs btn-outline-primary rounded-pill" data-product-id="<?= $product_row['id'] ?>" data-product-variant-id="<?= $variant_id ?>" data-product-title="<?= $product_row['name'] ?>" data-product-slug="<?= $product_row['slug'] ?>" data-product-image="<?= $product_row['image']; ?>" data-product-price="<?= $variant_price; ?>" data-min="<?= $data_min; ?>" data-step="<?= $data_step; ?>" data-product-description="<?= short_description_word_limit(output_escaping(str_replace('\r\n', '&#13;&#10;', strip_tags($product_row['short_description'])))); ?>" data-izimodal-open="<?= $modal ?>">
                                                                            <i class="uil uil-shopping-bag"></i>&nbsp;<?= !empty($this->lang->line('add_to_cart')) ? $this->lang->line('add_to_cart') : 'Add To Cart' ?></a>

                                                                    </div>
                                                            </figure>
                                                            <!-- /.social -->
                                                        </div>
                                                        <!--/.swiper-slide -->

                                                <?php }
                                                    $i++;
                                                    }if($flag == 0){ ?>
                                                        <div class="col-12 text-center my-auto">
                                                            <h1 class="h2"><?= !empty($this->lang->line('no_product_found')) ? $this->lang->line('no_product_found') : 'No Products Found.' ?></h1>
                                                        </div>
                                                <?php }
                                                } ?>
                                            <?php } ?>
                                        </div>
                                        <!--/.swiper-wrapper -->
                                        <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
                                    </div>
                                    <!-- /.swiper -->
                                    <div class="swiper-controls">
                                        <div class="swiper-pagination product-swiper-pagination swiper-pagination-clickable swiper-pagination-bullets swiper-pagination-horizontal">
                                            <span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 1"></span>
                                            <span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 2"></span>
                                            <span class="swiper-pagination-bullet swiper-pagination-bullet-active" tabindex="0" role="button" aria-label="Go to slide 3" aria-current="true"></span>
                                        </div>
                                    </div>
                                </div>

                                <!-- /.swiper-container -->
                            </div>
                            <!--/column -->
                            <div class="col-lg-3">
                                <div class="default_heading">
                                    <h3 class="mb-0 section-title"><?= ucfirst($row['title']) ?></h3>
                                    <h6 class="title-sm text-muted"><?= $row['short_description']; ?></h6>
                                </div>
                                <div>
                                    <a href="<?= base_url('sellers/' . $seller_slug . '/products/section/' . $row['id'] . '/' . $row['slug']) ?>" class="hover text-decoration-none"><?= !empty($this->lang->line('view_more')) ? $this->lang->line('view_more') : 'View More' ?>
                                        <i class="uil uil-arrow-right"></i>
                                    </a>
                                </div>
                            </div>
                            <!--/column -->
                        </div>
                    </div>
                </section>


                <!-- style 2  -->
                <?php } else if ($row['style'] == 'style_2') {
                if ($count_key != 0) {
                    if (!empty($offers) && !empty($offers[$count_key - 1])) { ?>
                       <!-- <div class="offer-img">
                            <img class="img-fluid lazy my-4 rounded offer-image" data-src="<?= base_url($offers[$count_key - 1]['image']) ?>" alt="Offer image" src="https://placehold.co/1290x268?text=Loading%20Offers..%20.&font=Montserrat" style="object-fit: cover;">
                        </div> -->
                <?php }
                }
                ?>

                <section class="mt-md-8 wrapper">
                    <div>
                        <div class="align-items-center gx-lg-8 gx-xl-12 row">
                            <div class="col-lg-3 mb-2">
                                <div class="default_heading">
                                    <h3 class="mb-0 section-title"><?= ucfirst($row['title']) ?></h3>
                                    <h6 class="title-sm text-muted"><?= $row['short_description']; ?></h6>
                                </div>
                                <div>
                                    <a href="<?= base_url('sellers/' . $seller_slug . '/products/section/' . $row['id'] . '/' . $row['slug']) ?>" class="hover text-decoration-none"><?= !empty($this->lang->line('view_more')) ? $this->lang->line('view_more') : 'View More' ?>
                                        <i class="uil uil-arrow-right"></i>
                                    </a>
                                </div>
                            </div>
                            <!--/column -->
                            <div class="col-lg-9">
                                <div class="swiper-container text-center swiper-container-1" data-margin="30" data-dots="true" data-items-xl="3" data-items-md="2" data-items-xs="1">
                                    <div class="swiper mySwiper swiper-initialized swiper-horizontal swiper-pointer-events mb-4">
                                        <div class="swiper-wrapper">
                                            <?php $product_count = count($row['product_details']) - 1; ?>
                                            <?php
                                            $i = 0;
                                            $flag = 0;
                                            if (count($row['product_details']) > 0) {
                                                foreach ($row['product_details'] as $key => $product_row) {
                                                    if($product_row['seller_slug'] == $seller_slug) { $flag = 1;
                                                    if ($i == 8) {
                                                        break;
                                                    }
                                            ?>
                                                    <?php if ($key != 0) { ?>
                                                        <div class="swiper-slide shadow-xl product-bg swiper-slide-style4" style="width: 280px; margin-right: 30px;">
                                                            <figure class="rounded ">
                                                                <div>
                                                                <?php if(isset($seller_slug) && !empty($seller_slug) && $seller_slug != '') { ?>
                                                                    <a href="<?= base_url('sellers/' . $product_row['seller_slug'] . '/products/details/' . $product_row['slug']) ?>">
                                                                        <img class="lazy fig_image" src="<?= base_url('assets/front_end/modern/img/product-placeholder.jpg') ?>" data-src="<?= $product_row['image_sm'] ?>" alt="<?= $product_row['name'] ?>" style="object-fit: cover;">
                                                                    </a>
                                                                <?php } else { ?>
                                                                    <a href="<?= base_url('products/details/' . $product_row['slug']) ?>">
                                                                        <img class="lazy fig_image" src="<?= base_url('assets/front_end/modern/img/product-placeholder.jpg') ?>" data-src="<?= $product_row['image_sm'] ?>" alt="<?= $product_row['name'] ?>" style="object-fit: cover;">
                                                                    </a>
                                                                <?php } ?>
                                                                </div>

                                                                <a class="item-like text-decoration-none add-to-fav-btn 
                                                            <?= ($product_row['is_favorite'] == 1) ? 'fa fa-heart' : 'fa fa-heart-o' ?>  
                                                            " href="#" data-bs-toggle="white-tooltip" title="<?= !empty($this->lang->line('add_to_favorite')) ? $this->lang->line('add_to_favorite') : 'Add to Favorite' ?>" data-product-id="<?= $product_row['id'] ?>" style="color: <?= ($product_row['is_favorite'] == 1) ? 'red' : '' ?>">
                                                                    <i class=""></i>
                                                                </a>

                                                                <a href="#" class="quick-view-btn item-view text-decoration-none" data-bs-toggle="white-tooltip" title="<?= !empty($this->lang->line('quick_view')) ? $this->lang->line('quick_view') : 'Quick View' ?>" data-tip="<?= !empty($this->lang->line('quick_view')) ? $this->lang->line('quick_view') : 'Quick View' ?>" data-tip="<?= !empty($this->lang->line('quick_view')) ? $this->lang->line('quick_view') : 'Quick View' ?>" data-product-id="<?= $product_row['id'] ?>" data-product-variant-id="<?= $product_row['variants'][0]['id'] ?>" data-izimodal-open="#quick-view">
                                                                    <i class="uil uil-eye"></i>
                                                                </a>
                                                                <?php
                                                                if (count($product_row['variants']) <= 1) {
                                                                    $variant_id = $product_row['variants'][0]['id'];
                                                                    $modal = "";
                                                                } else {
                                                                    $variant_id = "";
                                                                    $modal = "#quick-view";
                                                                }
                                                                ?>

                                                                <?php
                                                                if (count($product_row['variants']) <= 1) {
                                                                    $variant_id = $product_row['variants'][0]['id'];
                                                                } else {
                                                                    $variant_id = "";
                                                                }
                                                                ?>
                                                                <a href="#" class="compare item-compare text-decoration-none" data-bs-toggle="white-tooltip" title="Compare" data-tip="<?= !empty($this->lang->line('quick_view')) ? $this->lang->line('quick_view') : 'Quick View' ?>" data-tip="<?= !empty($this->lang->line('compare')) ? $this->lang->line('compare') : 'Compare' ?>" data-product-id="<?= $product_row['id'] ?>" data-product-variant-id="<?= $variant_id ?>">
                                                                    <i class="uil uil-exchange-alt"></i>
                                                                </a>

                                                                <?php if (isset($product_row['min_max_price']['special_price']) && $product_row['min_max_price']['special_price'] != '' && $product_row['min_max_price']['special_price'] != 0 && $product_row['min_max_price']['special_price'] < $product_row['min_max_price']['min_price']) { ?>
                                                                    <span class="avatar bg-pink d-flex position-absolute text-uppercase text-white sale_tag">
                                                                        <span class=""><?= !empty($this->lang->line('sale')) ? $this->lang->line('sale') : 'Sale' ?></span>
                                                                    </span>
                                                                <?php } ?>

                                                                <div class="card-body my-4 style_3">
                                                                    <input id="input" name="rating" class="rating rating-loading d-none" data-size="xs" value="<?= $product_row['rating'] ?>" data-show-clear="false" data-show-caption="false" readonly>
                                                                    <div class="product-content mt-2">
                                                                        <h4 class="title post-title m-0" title="<?= output_escaping(str_replace('\r\n', '&#13;&#10;', $product_row['name'])) ?>" style="font-size: 16px;">
                                                                        <?php if(isset($seller_slug) && !empty($seller_slug) && $seller_slug != '') { ?>
                                                                            <a class="link-dark text-decoration-none" href="<?= base_url('sellers/' . $product_row['seller_slug'] . '/products/details/' . $product_row['slug']) ?>"><?= short_description_word_limit(output_escaping(str_replace('\r\n', '&#13;&#10;', strip_tags($product_row['name']))), 13) ?></a>
                                                                        <?php } else { ?>
                                                                            <a class="link-dark text-decoration-none" href="<?= base_url('products/details/' . $product_row['slug']) ?>"><?= short_description_word_limit(output_escaping(str_replace('\r\n', '&#13;&#10;', strip_tags($product_row['name']))), 13) ?></a>
                                                                        <?php } ?>
                                                                        </h4>
                                                                        <?php if (($product_row['variants'][0]['special_price'] < $product_row['variants'][0]['price']) && ($product_row['variants'][0]['special_price'] != 0)) { ?>
                                                                            <p class="mb-0 price text-muted">
                                                                                <span id="price">
                                                                                    <?php echo $settings['currency'] ?>
                                                                                    <?php
                                                                                    $price = $product_row['variants'][0]['special_price'];
                                                                                    echo format_price($price);
                                                                                    ?>
                                                                                </span>
                                                                                <sup>
                                                                                    <span class="special-price striped-price text-danger" id="product-striped-price-div">
                                                                                        <s id="striped-price">
                                                                                            <?php echo $settings['currency'] ?>
                                                                                            <?php $price = $product_row['variants'][0]['price'];
                                                                                            echo format_price($price);
                                                                                            // echo $price;
                                                                                            ?>
                                                                                        </s>
                                                                                    </span>
                                                                                </sup>
                                                                            </p>
                                                                        <?php } else { ?>
                                                                            <p class="mb-0 price text-muted">
                                                                                <span id="price">
                                                                                    <?php echo $settings['currency'] ?>
                                                                                    <?php
                                                                                    $price = $product_row['variants'][0]['price'];
                                                                                    echo format_price($price);
                                                                                    ?>
                                                                                </span>
                                                                            </p>
                                                                        <?php } ?>
                                                                        <!-- <a href="#" class="add_to_cart  btn btn-sm btn-outline-primary rounded-pill mt-2"><i class="uil uil-shopping-bag"></i>&nbsp; Add to Cart</a> -->

                                                                        <?php $variant_price = ($product_row['variants'][0]['special_price'] > 0 && $product_row['variants'][0]['special_price'] != '') ? $product_row['variants'][0]['special_price'] : $product_row['variants'][0]['price'];
                                                                        $data_min = (isset($product_row['minimum_order_quantity']) && !empty($product_row['minimum_order_quantity'])) ? $product_row['minimum_order_quantity'] : 1;
                                                                        $data_step = (isset($product_row['minimum_order_quantity']) && !empty($product_row['quantity_step_size'])) ? $product_row['quantity_step_size'] : 1;
                                                                        $data_max = (isset($product_row['total_allowed_quantity']) && !empty($product_row['total_allowed_quantity'])) ? $product_row['total_allowed_quantity'] : 0;
                                                                        ?>
                                                                        <a href="#" class="add_to_cart  btn btn-xs btn-outline-primary rounded-pill" data-product-id="<?= $product_row['id'] ?>" data-product-variant-id="<?= $variant_id ?>" data-product-title="<?= $product_row['name'] ?>" data-product-slug="<?= $product_row['slug'] ?>" data-product-image="<?= $product_row['image']; ?>" data-product-price="<?= $variant_price; ?>" data-min="<?= $data_min; ?>" data-step="<?= $data_step; ?>" data-product-description="<?= short_description_word_limit(output_escaping(str_replace('\r\n', '&#13;&#10;', strip_tags($product_row['short_description'])))); ?>" data-izimodal-open="<?= $modal ?>">
                                                                            <i class="uil uil-shopping-bag"></i>&nbsp;<?= !empty($this->lang->line('add_to_cart')) ? $this->lang->line('add_to_cart') : 'Add To Cart' ?></a>

                                                                    </div>
                                                            </figure>
                                                            <!-- /.social -->
                                                        </div>
                                                        <!--/.swiper-slide -->

                                                <?php }
                                                    $i++;
                                                    }if($flag == 0){ ?>
                                                    <div class="col-12 text-center mt-4 mb-2 d-flex justify-content-center align-items-center">
                                                        <h1 class="h2"><?= !empty($this->lang->line('no_product_found')) ? $this->lang->line('no_product_found') : 'No Products Found.' ?></h1>
                                                    </div>
                                            <?php }
                                                } ?>
                                            <?php } ?>
                                        </div>
                                        <!--/.swiper-wrapper -->
                                        <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
                                    </div>
                                    <!-- /.swiper -->
                                    <div class="swiper-controls">
                                        <div class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets swiper-pagination-horizontal product-swiper-pagination">
                                            <span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 1"></span>
                                            <span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 2"></span>
                                            <span class="swiper-pagination-bullet swiper-pagination-bullet-active" tabindex="0" role="button" aria-label="Go to slide 3" aria-current="true"></span>
                                        </div>
                                    </div>
                                </div>
                                <!-- /.swiper-container -->
                            </div>
                            <!--/column -->
                        </div>
                    </div>
                </section>

                <!-- Style 3 Design -->
                <!-- First Product -->
                <?php } else if ($row['style'] == 'style_3') {
                if ($count_key != 0) {
                    if (!empty($offers) && !empty($offers[$count_key - 1])) { ?>
                       <!-- <div class="offer-img">
                            <img class="img-fluid lazy my-4 rounded offer-image" data-src="<?= base_url($offers[$count_key - 1]['image']) ?>" alt="Offer image" src="https://placehold.co/1290x268?text=Loading%20Offers..%20.&font=Montserrat" style="object-fit: cover;">
                        </div> -->
                <?php }
                }
                ?>
                <?php $first_product = $row['product_details'][0];
                $flag = 0 ;
                if($row['product_details'][0]['seller_slug'] == $seller_slug) { $flag = 1;?>
                <div class="bg-white d-flex align-items-center flex-wrap">
                    <div class="col-md-4 col-12 style-3-product-right-lg">
                        <div class="card project item">
                            <figure class="">
                                <div class="product-image-container d-flex align-items-center justify-content-center">
                                    <div>
                                    <?php if(isset($seller_slug) && !empty($seller_slug) && $seller_slug != '') { ?>
                                        <a href="<?= base_url('sellers/' . $first_product['seller_slug'] . '/products/details/' . $first_product['slug']) ?>">
                                            <img class="pic-1 lazy" src="<?= base_url('assets/front_end/modern/img/product-placeholder.jpg') ?>" data-src="<?= $first_product['image_sm'] ?>" alt="<?= $first_product['name'] ?>" style="object-fit: cover; height:100% !important;">
                                        </a>
                                    <?php } else { ?>
                                        <a href="<?= base_url('products/details/' . $first_product['slug']) ?>">
                                            <img class="pic-1 lazy" src="<?= base_url('assets/front_end/modern/img/product-placeholder.jpg') ?>" data-src="<?= $first_product['image_sm'] ?>" alt="<?= $first_product['name'] ?>" style="object-fit: cover; height:100% !important;">
                                        </a>
                                    <?php } ?>
                                    </div>
                                </div>

                                <a class="item-like text-decoration-none add-to-fav-btn 
                                            <?= ($first_product['is_favorite'] == 1) ? 'fa fa-heart' : 'fa fa-heart-o' ?>  
                                            " href="#" data-bs-toggle="white-tooltip" title="<?= !empty($this->lang->line('add_to_favorite')) ? $this->lang->line('add_to_favorite') : 'Add to Favorite' ?>" data-product-id="<?= $first_product['id'] ?>" style="color: <?= ($first_product['is_favorite'] == 1) ? 'red' : '' ?>">
                                    <i class=""></i>
                                </a>

                                <a href="#" class="quick-view-btn item-view text-decoration-none" data-bs-toggle="white-tooltip" title="<?= !empty($this->lang->line('quick_view')) ? $this->lang->line('quick_view') : 'Quick View' ?>" data-tip="<?= !empty($this->lang->line('quick_view')) ? $this->lang->line('quick_view') : 'Quick View' ?>" data-tip="<?= !empty($this->lang->line('quick_view')) ? $this->lang->line('quick_view') : 'Quick View' ?>" data-product-id="<?= $first_product['id'] ?>" data-product-variant-id="<?= $first_product['variants'][0]['id'] ?>" data-izimodal-open="#quick-view">
                                    <i class="uil uil-eye"></i>
                                </a>
                                <?php
                                if (count($first_product['variants']) <= 1) {
                                    $variant_id = $first_product['variants'][0]['id'];
                                    $modal = "";
                                } else {
                                    $variant_id = "";
                                    $modal = "#quick-view";
                                }
                                ?>

                                <?php
                                if (count($first_product['variants']) <= 1) {
                                    $variant_id = $first_product['variants'][0]['id'];
                                } else {
                                    $variant_id = "";
                                }
                                ?>
                                <a href="#" class="compare item-compare text-decoration-none" data-bs-toggle="white-tooltip" title="Compare" data-tip="<?= !empty($this->lang->line('quick_view')) ? $this->lang->line('quick_view') : 'Quick View' ?>" data-tip="<?= !empty($this->lang->line('compare')) ? $this->lang->line('compare') : 'Compare' ?>" data-product-id="<?= $first_product['id'] ?>" data-product-variant-id="<?= $variant_id ?>">
                                    <i class="uil uil-exchange-alt"></i>
                                </a>

                                <?php if (isset($first_product['min_max_price']['special_price']) && $first_product['min_max_price']['special_price'] != '' && $first_product['min_max_price']['special_price'] != 0 && $first_product['min_max_price']['special_price'] < $first_product['min_max_price']['min_price']) { ?>
                                    <span class="avatar bg-pink d-flex position-absolute text-uppercase text-white sale_tag">
                                        <span class=""><?= !empty($this->lang->line('sale')) ? $this->lang->line('sale') : 'Sale' ?></span>
                                    </span>
                                <?php } ?>

                                <div class="my-4 text-center">
                                    <input id="input" name="rating" class="rating rating-loading d-none" data-size="xs" value="<?= $first_product['rating'] ?>" data-show-clear="false" data-show-caption="false" readonly>
                                    <div class="product-content mt-2">
                                        <h4 class="title post-title m-0" title="<?= output_escaping(str_replace('\r\n', '&#13;&#10;', $first_product['name'])) ?>" style="font-size: 16px;">
                                        <?php if(isset($seller_slug) && !empty($seller_slug) && $seller_slug != '') { ?>
                                            <a class="link-dark text-decoration-none" href="<?= base_url('sellers/' . $first_product['seller_slug'] . '/products/details/' . $first_product['slug']) ?>"><?= short_description_word_limit(output_escaping(str_replace('\r\n', '&#13;&#10;', strip_tags($first_product['name'])))) ?></a>
                                        <?php } else { ?>
                                            <a class="link-dark text-decoration-none" href="<?= base_url('products/details/' . $first_product['slug']) ?>"><?= short_description_word_limit(output_escaping(str_replace('\r\n', '&#13;&#10;', strip_tags($first_product['name'])))) ?></a>
                                        <?php } ?>
                                        </h4>
                                        <?php if (($first_product['variants'][0]['special_price'] < $first_product['variants'][0]['price']) && ($first_product['variants'][0]['special_price'] != 0)) { ?>
                                            <p class="mb-0 price text-muted">
                                                <span id="price" style='font-size: 18px;'>
                                                    <?php echo $settings['currency'] ?>
                                                    <?php
                                                    $price = $first_product['variants'][0]['special_price'];
                                                    echo format_price($price);
                                                    ?>
                                                </span>
                                                <sup>
                                                    <span class="special-price striped-price text-danger" id="product-striped-price-div">
                                                        <s id="striped-price">
                                                            <?php echo $settings['currency'] ?>
                                                            <?php $price = $first_product['variants'][0]['price'];
                                                            echo format_price($price);
                                                            // echo $price;
                                                            ?>
                                                        </s>
                                                    </span>
                                                </sup>
                                            </p>
                                        <?php } else { ?>
                                            <p class="mb-0 price text-muted">
                                                <span id="price" style='font-size: 18px;'>
                                                    <?php echo $settings['currency'] ?>
                                                    <?php
                                                    $price = $first_product['variants'][0]['price'];
                                                    echo format_price($price);
                                                    ?>
                                                </span>
                                            </p>
                                        <?php } ?>
                                        <!-- <a href="#" class="add_to_cart  btn btn-sm btn-outline-primary rounded-pill mt-2"><i class="uil uil-shopping-bag"></i>&nbsp; Add to Cart</a> -->

                                        <?php $variant_price = ($first_product['variants'][0]['special_price'] > 0 && $first_product['variants'][0]['special_price'] != '') ? $first_product['variants'][0]['special_price'] : $first_product['variants'][0]['price'];
                                        $data_min = (isset($first_product['minimum_order_quantity']) && !empty($first_product['minimum_order_quantity'])) ? $first_product['minimum_order_quantity'] : 1;
                                        $data_step = (isset($first_product['minimum_order_quantity']) && !empty($first_product['quantity_step_size'])) ? $first_product['quantity_step_size'] : 1;
                                        $data_max = (isset($first_product['total_allowed_quantity']) && !empty($first_product['total_allowed_quantity'])) ? $first_product['total_allowed_quantity'] : 0;
                                        ?>
                                        <a href="#" class="add_to_cart  btn btn-xs btn-outline-primary rounded-pill" data-product-id="<?= $first_product['id'] ?>" data-product-variant-id="<?= $variant_id ?>" data-product-title="<?= $first_product['name'] ?>" data-product-slug="<?= $first_product['slug'] ?>" data-product-image="<?= $first_product['image']; ?>" data-product-price="<?= $variant_price; ?>" data-min="<?= $data_min; ?>" data-step="<?= $data_step; ?>" data-product-description="<?= short_description_word_limit(output_escaping(str_replace('\r\n', '&#13;&#10;', strip_tags($first_product['short_description'])))); ?>" data-izimodal-open="<?= $modal ?>">
                                            <i class="uil uil-shopping-bag"></i>&nbsp;<?= !empty($this->lang->line('add_to_cart')) ? $this->lang->line('add_to_cart') : 'Add To Cart' ?></a>


                                    </div>
                            </figure>
                        </div>
                    </div>
                    <div class="col-12 col-md-8 products-list">
                        <div class="row">
                            <div class="my-4">

                                <div class="align-items-md-center d-flex justify-content-between">
                                    <div class="default_heading">
                                        <h3 class="mb-0 section-title"><?= ucfirst($row['title']) ?></h3>
                                        <h6 class="title-sm text-muted"><?= $row['short_description']; ?></h6>
                                    </div>
                                    <div>
                                        <a href="<?= base_url('sellers/' . $seller_slug . '/products/section/' . $row['id'] . '/' . $row['slug']) ?>" class="hover text-decoration-none"><?= !empty($this->lang->line('view_more')) ? $this->lang->line('view_more') : 'View More' ?>
                                            <i class="uil uil-arrow-right"></i>
                                        </a>
                                    </div>
                                </div>
                                <hr class="mb-0 mt-4">
                            </div>
                            <?php $product_count = count($row['product_details']) - 1; ?>

                            <?php
                            $i = 0;
                            if (count($row['product_details']) > 0) {
                                foreach ($row['product_details'] as $key => $product_row) {
                                    if($product_row['seller_slug'] == $seller_slug) { $flag = 1;
                                    if ($i == 4) {
                                        break;
                                    }
                            ?>
                                    <?php if ($key != 0) { ?>
                                        <div class="col-md-4 mt-5 col-6">
                                            <div class="card item project">
                                                <figure class="">
                                                    <div>
                                                    <?php if(isset($seller_slug) && !empty($seller_slug) && $seller_slug != '') { ?>
                                                        <a href="<?= base_url('sellers/' . $product_row['seller_slug'] . '/products/details/' . $product_row['slug']) ?>">
                                                            <img class="lazy fig_image" src="<?= base_url('assets/front_end/modern/img/product-placeholder.jpg') ?>" data-src="<?= $product_row['image_sm'] ?>" alt="<?= $product_row['name'] ?>" style="object-fit: cover;">
                                                        </a>
                                                    <?php } else { ?>
                                                        <a href="<?= base_url('products/details/' . $product_row['slug']) ?>">
                                                            <img class="lazy fig_image" src="<?= base_url('assets/front_end/modern/img/product-placeholder.jpg') ?>" data-src="<?= $product_row['image_sm'] ?>" alt="<?= $product_row['name'] ?>" style="object-fit: cover;">
                                                        </a>
                                                    <?php } ?>
                                                    </div>

                                                    <a class="item-like text-decoration-none add-to-fav-btn <?= ($product_row['is_favorite'] == 1) ? 'fa fa-heart' : 'fa fa-heart-o' ?>" href="#" data-bs-toggle="white-tooltip" title="<?= !empty($this->lang->line('add_to_favorite')) ? $this->lang->line('add_to_favorite') : 'Add to Favorite' ?>" data-product-id="<?= $product_row['id'] ?>" style="color: <?= ($product_row['is_favorite'] == 1) ? 'red' : '' ?>">
                                                        <i class=""></i>
                                                    </a>

                                                    <a href="#" class="quick-view-btn item-view text-decoration-none" data-bs-toggle="white-tooltip" title="<?= !empty($this->lang->line('quick_view')) ? $this->lang->line('quick_view') : 'Quick View' ?>" data-tip="<?= !empty($this->lang->line('quick_view')) ? $this->lang->line('quick_view') : 'Quick View' ?>" data-tip="<?= !empty($this->lang->line('quick_view')) ? $this->lang->line('quick_view') : 'Quick View' ?>" data-product-id="<?= $product_row['id'] ?>" data-product-variant-id="<?= $product_row['variants'][0]['id'] ?>" data-izimodal-open="#quick-view">
                                                        <i class="uil uil-eye"></i>
                                                    </a>
                                                    <?php
                                                    if (count($product_row['variants']) <= 1) {
                                                        $variant_id = $product_row['variants'][0]['id'];
                                                        $modal = "";
                                                    } else {
                                                        $variant_id = "";
                                                        $modal = "#quick-view";
                                                    }
                                                    ?>

                                                    <?php
                                                    if (count($product_row['variants']) <= 1) {
                                                        $variant_id = $product_row['variants'][0]['id'];
                                                    } else {
                                                        $variant_id = "";
                                                    }
                                                    ?>
                                                    <a href="#" class="compare item-compare text-decoration-none" data-bs-toggle="white-tooltip" title="Compare" data-tip="<?= !empty($this->lang->line('quick_view')) ? $this->lang->line('quick_view') : 'Quick View' ?>" data-tip="<?= !empty($this->lang->line('compare')) ? $this->lang->line('compare') : 'Compare' ?>" data-product-id="<?= $product_row['id'] ?>" data-product-variant-id="<?= $variant_id ?>">
                                                        <i class="uil uil-exchange-alt"></i>
                                                    </a>

                                                    <?php if (isset($product_row['min_max_price']['special_price']) && $product_row['min_max_price']['special_price'] != '' && $product_row['min_max_price']['special_price'] != 0 && $product_row['min_max_price']['special_price'] < $product_row['min_max_price']['min_price']) { ?>
                                                        <span class="avatar bg-pink d-flex position-absolute text-uppercase text-white sale_tag">
                                                            <span class=""><?= !empty($this->lang->line('sale')) ? $this->lang->line('sale') : 'Sale' ?></span>
                                                        </span>
                                                    <?php } ?>


                                                    <div class="my-4 text-center style_3">
                                                        <input id="input" name="rating" class="rating rating-loading d-none" data-size="xs" value="<?= $product_row['rating'] ?>" data-show-clear="false" data-show-caption="false" readonly>
                                                        <div class="product-content mt-2">
                                                            <h4 class="title post-title m-0" title="<?= output_escaping(str_replace('\r\n', '&#13;&#10;', $product_row['name'])) ?>" style="font-size: 16px;">
                                                            <?php if(isset($seller_slug) && !empty($seller_slug) && $seller_slug != '') { ?>
                                                                <a class="link-dark text-decoration-none" href="<?= base_url('sellers/' . $product_row['seller_slug'] . '/products/details/' . $product_row['slug']) ?>"><?= short_description_word_limit(output_escaping(str_replace('\r\n', '&#13;&#10;', strip_tags($product_row['name']))), 10) ?></a>
                                                            <?php } else { ?>
                                                                <a class="link-dark text-decoration-none" href="<?= base_url('products/details/' . $product_row['slug']) ?>"><?= short_description_word_limit(output_escaping(str_replace('\r\n', '&#13;&#10;', strip_tags($product_row['name']))), 10) ?></a>
                                                            <?php } ?>
                                                            </h4>
                                                            <?php if (($product_row['variants'][0]['special_price'] < $product_row['variants'][0]['price']) && ($product_row['variants'][0]['special_price'] != 0)) { ?>
                                                                <p class="mb-0 price text-muted">
                                                                    <span id="price">
                                                                        <?php echo $settings['currency'] ?>
                                                                        <?php
                                                                        $price = $product_row['variants'][0]['special_price'];
                                                                        echo format_price($price);
                                                                        ?>
                                                                    </span>
                                                                    <sup>
                                                                        <span class="special-price striped-price text-danger" id="product-striped-price-div">
                                                                            <s id="striped-price">
                                                                                <?php echo $settings['currency'] ?>
                                                                                <?php $price = $product_row['variants'][0]['price'];
                                                                                echo format_price($price);
                                                                                // echo $price;
                                                                                ?>
                                                                            </s>
                                                                        </span>
                                                                    </sup>
                                                                </p>
                                                            <?php } else { ?>
                                                                <p class="mb-0 price text-muted">
                                                                    <span id="price">
                                                                        <?php echo $settings['currency'] ?>
                                                                        <?php
                                                                        $price = $product_row['variants'][0]['price'];
                                                                        echo format_price($price);
                                                                        ?>
                                                                    </span>
                                                                </p>
                                                            <?php } ?>
                                                            <!-- <a href="#" class="add_to_cart  btn btn-sm btn-outline-primary rounded-pill mt-2"><i class="uil uil-shopping-bag"></i>&nbsp; Add to Cart</a> -->

                                                            <?php $variant_price = ($product_row['variants'][0]['special_price'] > 0 && $product_row['variants'][0]['special_price'] != '') ? $product_row['variants'][0]['special_price'] : $product_row['variants'][0]['price'];
                                                            $data_min = (isset($product_row['minimum_order_quantity']) && !empty($product_row['minimum_order_quantity'])) ? $product_row['minimum_order_quantity'] : 1;
                                                            $data_step = (isset($product_row['minimum_order_quantity']) && !empty($product_row['quantity_step_size'])) ? $product_row['quantity_step_size'] : 1;
                                                            $data_max = (isset($product_row['total_allowed_quantity']) && !empty($product_row['total_allowed_quantity'])) ? $product_row['total_allowed_quantity'] : 0;
                                                            ?>
                                                            <a href="#" class="add_to_cart  btn btn-xs btn-outline-primary rounded-pill" data-product-id="<?= $product_row['id'] ?>" data-product-variant-id="<?= $variant_id ?>" data-product-title="<?= $product_row['name'] ?>" data-product-image="<?= $product_row['image']; ?>" data-product-price="<?= $variant_price; ?>" data-min="<?= $data_min; ?>" data-step="<?= $data_step; ?>" data-product-description="<?= short_description_word_limit(output_escaping(str_replace('\r\n', '&#13;&#10;', strip_tags($product_row['short_description'])))); ?>" data-izimodal-open="<?= $modal ?>">
                                                                <i class="uil uil-shopping-bag"></i>&nbsp;<?= !empty($this->lang->line('add_to_cart')) ? $this->lang->line('add_to_cart') : 'Add To Cart' ?></a>

                                                        </div>
                                                </figure>
                                            </div>
                                        </div>

                            <?php }
                                    $i++;
                                }if($flag == 0){ ?>
                                    <div class="col-12 text-center">
                                        <h1 class="h2"><?= !empty($this->lang->line('no_product_found')) ? $this->lang->line('no_product_found') : 'No Products Found.' ?></h1>
                                    </div>
                            <?php }
                                }
                            }  ?>
                            <?php } ?>
                        </div>
                        <div class="p-5 my-3"></div>
                    </div>
                </div>


                <!-- Style 4 Design -->
                <?php } else if ($row['style'] == 'style_4') {
                if ($count_key != 0) {
                    if (!empty($offers) && !empty($offers[$count_key - 1])) { ?>
                       <!-- <div class="offer-img">
                            <img class="img-fluid lazy my-4 rounded offer-image" data-src="<?= base_url($offers[$count_key - 1]['image']) ?>" alt="Offer image" src="https://placehold.co/1290x268?text=Loading%20Offers..%20.&font=Montserrat" style="object-fit: cover;">
                        </div> -->
                <?php }
                }
                ?>
                <section class="wrapper">
                    <!-- <div class="container"> -->
                    <div class="row">
                        <div class="text-center mb-4">
                            <div class="default_heading">
                                <h3 class="mb-0 section-title"><?= ucfirst($row['title']) ?></h3>
                                <h6 class="title-sm text-muted"><?= $row['short_description']; ?></h6>
                            </div>
                            <a href="<?= base_url('sellers/' . $seller_slug . '/products/section/' . $row['id'] . '/' . $row['slug']) ?>" class="hover text-decoration-none"><?= !empty($this->lang->line('see_all')) ? $this->lang->line('see_all') : 'See All'; ?></a>
                        </div>
                        <div class="col-lg-12 p-0">
                            <div class="swiper-container overflow-hidden grid-view text-center swiper-style4" data-margin="30" data-dots="true" data-items-xl="4" data-items-md="2" data-items-xs="1">
                                <!-- <div class="swiper swiper-initialized swiper-horizontal swiper-pointer-events mb-4"> -->
                                <div class="swiper-wrapper">
                                    <?php if (isset($row['product_details']) && !empty($row['product_details'])) { ?>
                                        <?php
                                        $i = 0;
                                        $flag = 0;
                                        if (count($row['product_details']) > 0) {
                                            foreach ($row['product_details'] as $product_row) {
                                                if($product_row['seller_slug'] == $seller_slug) { $flag = 1;
                                                if ($i == 7) {
                                                    break;
                                                }
                                        ?>
                                                <div class="swiper-slide shadow-xl product-bg swiper-slide-style4">
                                                    <figure class="rounded ">
                                                        <div>
                                                        <?php if(isset($seller_slug) && !empty($seller_slug) && $seller_slug != '') { ?>
                                                            <a href="<?= base_url('sellers/' . $product_row['seller_slug'] . '/products/details/' . $product_row['slug']) ?>">
                                                                <img class="lazy fig_image" src="<?= base_url('assets/front_end/modern/img/product-placeholder.jpg') ?>" data-src="<?= $product_row['image_sm'] ?>" alt="<?= $product_row['name'] ?>" style="object-fit: cover;">
                                                            </a>
                                                        <?php } else { ?>
                                                            <a href="<?= base_url('products/details/' . $product_row['slug']) ?>">
                                                                <img class="lazy fig_image" src="<?= base_url('assets/front_end/modern/img/product-placeholder.jpg') ?>" data-src="<?= $product_row['image_sm'] ?>" alt="<?= $product_row['name'] ?>" style="object-fit: cover;">
                                                            </a>
                                                        <?php } ?>
                                                        </div>

                                                        <a class="item-like text-decoration-none add-to-fav-btn 
                                                        <?= ($product_row['is_favorite'] == 1) ? 'fa fa-heart' : 'fa fa-heart-o' ?>  
                                                        " href="#" data-bs-toggle="white-tooltip" title="<?= !empty($this->lang->line('add_to_favorite')) ? $this->lang->line('add_to_favorite') : 'Add to Favorite' ?>" data-product-id="<?= $product_row['id'] ?>" style="color: <?= ($product_row['is_favorite'] == 1) ? 'red' : '' ?>">
                                                            <i class=""></i>
                                                        </a>

                                                        <a href="#" class="quick-view-btn item-view text-decoration-none" data-bs-toggle="white-tooltip" title="<?= !empty($this->lang->line('quick_view')) ? $this->lang->line('quick_view') : 'Quick View' ?>" data-tip="<?= !empty($this->lang->line('quick_view')) ? $this->lang->line('quick_view') : 'Quick View' ?>" data-tip="<?= !empty($this->lang->line('quick_view')) ? $this->lang->line('quick_view') : 'Quick View' ?>" data-product-id="<?= $product_row['id'] ?>" data-product-variant-id="<?= $product_row['variants'][0]['id'] ?>" data-izimodal-open="#quick-view">
                                                            <i class="uil uil-eye"></i>
                                                        </a>
                                                        <?php
                                                        if (count($product_row['variants']) <= 1) {
                                                            $variant_id = $product_row['variants'][0]['id'];
                                                            $modal = "";
                                                        } else {
                                                            $variant_id = "";
                                                            $modal = "#quick-view";
                                                        }
                                                        ?>

                                                        <?php
                                                        if (count($product_row['variants']) <= 1) {
                                                            $variant_id = $product_row['variants'][0]['id'];
                                                        } else {
                                                            $variant_id = "";
                                                        }
                                                        ?>
                                                        <a href="#" class="compare item-compare text-decoration-none" data-bs-toggle="white-tooltip" title="Compare" data-tip="<?= !empty($this->lang->line('quick_view')) ? $this->lang->line('quick_view') : 'Quick View' ?>" data-tip="<?= !empty($this->lang->line('compare')) ? $this->lang->line('compare') : 'Compare' ?>" data-product-id="<?= $product_row['id'] ?>" data-product-variant-id="<?= $variant_id ?>">
                                                            <i class="uil uil-exchange-alt"></i>
                                                        </a>

                                                        <?php if (isset($product_row['min_max_price']['special_price']) && $product_row['min_max_price']['special_price'] != '' && $product_row['min_max_price']['special_price'] != 0 && $product_row['min_max_price']['special_price'] < $product_row['min_max_price']['min_price']) { ?>
                                                            <span class="avatar bg-pink d-flex position-absolute text-uppercase text-white" style="top: 1rem; left: 1rem;">
                                                                <span class=""><?= !empty($this->lang->line('sale')) ? $this->lang->line('sale') : 'Sale' ?></span>
                                                            </span>
                                                        <?php } ?>

                                                        <div class="card-body my-4 style_4">
                                                            <input id="input" name="rating" class="rating rating-loading d-none" data-size="xs" value="<?= $product_row['rating'] ?>" data-show-clear="false" data-show-caption="false" readonly>
                                                            <div class="product-content mt-2">
                                                                <h4 class="title post-title m-0" title="<?= output_escaping(str_replace('\r\n', '&#13;&#10;', $product_row['name'])) ?>" style="font-size: 16px;">
                                                                <?php if(isset($seller_slug) && !empty($seller_slug) && $seller_slug != '') { ?>
                                                                    <a class="link-dark text-decoration-none" href="<?= base_url('sellers/' . $product_row['seller_slug'] . '/products/details/' . $product_row['slug']) ?>"><?= short_description_word_limit(output_escaping(str_replace('\r\n', '&#13;&#10;', strip_tags($product_row['name'])))) ?></a>
                                                                <?php } else { ?>
                                                                    <a class="link-dark text-decoration-none" href="<?= base_url('products/details/' . $product_row['slug']) ?>"><?= short_description_word_limit(output_escaping(str_replace('\r\n', '&#13;&#10;', strip_tags($product_row['name'])))) ?></a>
                                                                <?php } ?>
                                                                </h4>
                                                                <?php if (($product_row['variants'][0]['special_price'] < $product_row['variants'][0]['price']) && ($product_row['variants'][0]['special_price'] != 0)) { ?>
                                                                    <p class="mb-0 price text-muted">
                                                                        <span id="price">
                                                                            <?php echo $settings['currency'] ?>
                                                                            <?php
                                                                            $price = $product_row['variants'][0]['special_price'];
                                                                            echo format_price($price);
                                                                            ?>
                                                                        </span>
                                                                        <sup>
                                                                            <span class="special-price striped-price text-danger" id="product-striped-price-div">
                                                                                <s id="striped-price">
                                                                                    <?php echo $settings['currency'] ?>
                                                                                    <?php $price = $product_row['variants'][0]['price'];
                                                                                    echo format_price($price);
                                                                                    // echo $price;
                                                                                    ?>
                                                                                </s>
                                                                            </span>
                                                                        </sup>
                                                                    </p>
                                                                <?php } else { ?>
                                                                    <p class="mb-0 price text-muted">
                                                                        <span id="price">
                                                                            <?php echo $settings['currency'] ?>
                                                                            <?php
                                                                            $price = $product_row['variants'][0]['price'];
                                                                            echo format_price($price);
                                                                            ?>
                                                                        </span>
                                                                    </p>
                                                                <?php } ?>

                                                                <?php $variant_price = ($product_row['variants'][0]['special_price'] > 0 && $product_row['variants'][0]['special_price'] != '') ? $product_row['variants'][0]['special_price'] : $product_row['variants'][0]['price'];
                                                                $data_min = (isset($product_row['minimum_order_quantity']) && !empty($product_row['minimum_order_quantity'])) ? $product_row['minimum_order_quantity'] : 1;
                                                                $data_step = (isset($product_row['minimum_order_quantity']) && !empty($product_row['quantity_step_size'])) ? $product_row['quantity_step_size'] : 1;
                                                                $data_max = (isset($product_row['total_allowed_quantity']) && !empty($product_row['total_allowed_quantity'])) ? $product_row['total_allowed_quantity'] : 0;
                                                                ?>
                                                                <a href="#" class="add_to_cart btn btn-xs btn-outline-primary rounded-pill" data-product-id="<?= $product_row['id'] ?>" data-product-variant-id="<?= $variant_id ?>" data-product-title="<?= $product_row['name'] ?>" data-product-slug="<?= $product_row['slug'] ?>" data-product-image="<?= $product_row['image']; ?>" data-product-price="<?= $variant_price; ?>" data-min="<?= $data_min; ?>" data-step="<?= $data_step; ?>" data-product-description="<?= short_description_word_limit(output_escaping(str_replace('\r\n', '&#13;&#10;', strip_tags($product_row['short_description'])))); ?>" data-izimodal-open="<?= $modal ?>">
                                                                    <i class="uil uil-shopping-bag"></i>&nbsp;<?= !empty($this->lang->line('add_to_cart')) ? $this->lang->line('add_to_cart') : 'Add To Cart' ?></a>
                                                            </div>
                                                        </div>
                                                    </figure>
                                                    <!-- /.social -->
                                                    <!--/.swiper-slide -->
                                                </div>
                                        <?php $i++;
                                        }   }if($flag == 0){ ?>
                                            <div class="col-12 text-center">
                                                <h1 class="h2"><?= !empty($this->lang->line('no_product_found')) ? $this->lang->line('no_product_found') : 'No Products Found.' ?></h1>
                                            </div>
                                    <?php }
                                        } ?>
                                    <?php } ?>
                                </div>
                                <!--/.swiper-wrapper -->
                                <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
                                <!-- </div> -->
                                <!-- /.swiper -->
                                <div class="swiper-controls">
                                    <div class="swiper-pagination product-style4-pagination swiper-pagination-clickable swiper-pagination-bullets swiper-pagination-horizontal">
                                        <span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 1"></span>
                                        <span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 2"></span>
                                        <span class="swiper-pagination-bullet swiper-pagination-bullet-active" tabindex="0" role="button" aria-label="Go to slide 3" aria-current="true"></span>
                                    </div>
                                </div>
                            </div>
                            <!-- /.swiper-container -->
                        </div>
                        <!--/column -->
                    </div>
                    <!-- </div> -->
                </section>
            <?php } ?>
    <?php }
        $offer_counter++;
    } ?>

</section>
<?php } ?>

<section class="container main-content wrapper mb-15">
    <div class="mt-5">

        <div class="align-items-center d-flex justify-content-between">
            <div class="default_heading">
                <h3 class="mb-0 section-title"><?= !empty($this->lang->line('products')) ? $this->lang->line('products') : 'Products' ?></h3>
                <h6 class="title-sm text-muted"><?= $seller_details[0]['username'] ?></h6>
            </div>
            <div>
                <a href="<?= base_url('sellers/' . $seller_slug . '/products') ?>" class="hover text-decoration-none"><?= !empty($this->lang->line('view_more')) ? $this->lang->line('view_more') : 'View More' ?>
                    <i class="uil uil-arrow-right"></i>
                </a>
            </div>
        </div>

    <div class="grid grid-view projects-masonry shop">
        <div class="row">
            <?php $i = 0;
            $flag = 0;
             foreach ($seller_products as $seller_product) {
                if($seller_product['seller_slug'] == $seller_slug) { $flag = 1;
                if ($i > 3) {
                    break;
                }
            ?>
                <div class="project item col-6 col-xl-3 default-style my-2" title="<?= $seller_product['name']; ?>">
                    <figure class="rounded">
                        <?php if($seller_product['availability'] == '' || $seller_product['availability'] == 1) { ?>
                            <?php if(isset($seller_slug) && !empty($seller_slug) && $seller_slug != '') { ?>
                                <a href="<?= base_url('sellers/' . $seller_product['seller_slug'] . '/products/details/' . $seller_product['slug']) ?>">
                                    <img class="pic-1 lazy fig_image" src="<?= base_url('assets/front_end/modern/img/product-placeholder.jpg') ?>" data-src="<?= $seller_product['image_sm'] ?>" style="object-fit: cover;">
                                </a>
                            <?php } else { ?>
                                <a href="<?= base_url('products/details/' . $seller_product['slug']) ?>">
                                    <img class="pic-1 lazy fig_image" src="<?= base_url('assets/front_end/modern/img/product-placeholder.jpg') ?>" data-src="<?= $seller_product['image_sm'] ?>" style="object-fit: cover;">
                                </a>
                            <?php } ?>
                       <?php } else { ?>
                            <!-- <img class="pic-1 lazy fig_image" src="<?= base_url('assets/front_end/modern/img/out_of_stock.jpg') ?>" style="object-fit: cover;"> -->
                            <div class="no-stock-container">
                                <img class="pic-1 lazy fig_image" src="<?= base_url('assets/front_end/modern/img/product-placeholder.jpg') ?>" data-src="<?= $seller_product['image_sm'] ?>" style="object-fit: unset !important;">
                                <div class="no-stock-txt-container">
                                    <div class="no-stock-txt-banner">
                                        <span class="no-stock-text"><?= !empty($this->lang->line('out_of_stock_txt')) ? $this->lang->line('out_of_stock_txt') : 'OUT OF STOCK' ?></span>
                                    </div>
                                </div>
                            </div>
                        <?php } ?>
                        <a class="item-like text-decoration-none add-to-fav-btn 
                                        <?= ($seller_product['is_favorite'] == 1) ? 'fa fa-heart' : 'fa fa-heart-o' ?>  
                                        " href="#" data-bs-toggle="white-tooltip" title="<?= !empty($this->lang->line('add_to_wishlist')) ? $this->lang->line('add_to_wishlist') : 'Add To wishlist' ?>" data-product-id="<?= $seller_product['id'] ?>" style="color: <?= ($seller_product['is_favorite'] == 1) ? 'red' : '' ?>">
                            <i class=""></i>
                        </a>
                        <a href="#" class="quick-view-btn item-view text-decoration-none" data-bs-toggle="white-tooltip" title="<?= !empty($this->lang->line('quick_view')) ? $this->lang->line('quick_view') : 'Quick View' ?>" data-tip="<?= !empty($this->lang->line('quick_view')) ? $this->lang->line('quick_view') : 'Quick View' ?>" data-product-id="<?= $seller_product['id'] ?>" data-product-variant-id="<?= $seller_product['variants'][0]['id'] ?>" data-izimodal-open="#quick-view" data-statistics='<?= $product_statistics ?>'>
                                <i class="uil uil-eye"></i>
                        </a>
                        <?php
                        if (count($seller_product['variants']) <= 1) {
                            $variant_id = $seller_product['variants'][0]['id'];
                            $modal = "";
                        } else {
                            $variant_id = "";
                            $modal = "#quick-view";
                        }
                        ?>
                        <?php
                        if (count($seller_product['variants']) <= 1) {
                            $variant_id = $seller_product['variants'][0]['id'];
                        } else {
                            $variant_id = "";
                        }
                        ?>
                        <a href="#" class="compare item-compare text-decoration-none" data-bs-toggle="white-tooltip" title="<?= !empty($this->lang->line('compare')) ? $this->lang->line('compare') : 'Compare' ?>" data-tip="<?= !empty($this->lang->line('compare')) ? $this->lang->line('compare') : 'Compare' ?>" data-product-id="<?= $seller_product['id'] ?>" data-product-variant-id="<?= $variant_id ?>">
                            <i class="uil uil-exchange-alt"></i>
                        </a>

                        <!-- <?php if (isset($seller_product['min_max_price']['special_price']) && $seller_product['min_max_price']['special_price'] != '' && $seller_product['min_max_price']['special_price'] != 0 && $seller_product['min_max_price']['special_price'] < $seller_product['min_max_price']['min_price']) { ?>
                            <span class="avatar bg-pink d-flex position-absolute text-uppercase text-white sale_tag">
                                <span class=""><?= !empty($this->lang->line('sale')) ? $this->lang->line('sale') : 'Sale' ?></span>
                            </span>
                        <?php } ?> -->
                        <?php if ($seller_product['availability'] == '' || $seller_product['availability'] == 1) { ?>
                            <span class="avatar bg-pink d-flex position-absolute text-uppercase text-white sale_tag">
                                <span class=""><?= !empty($this->lang->line('sale')) ? $this->lang->line('sale') : 'Sale' ?></span>
                            </span>
                        <?php } ?>

                        <?php
                        $variant_price = ($seller_product['variants'][0]['special_price'] > 0 && $seller_product['variants'][0]['special_price'] != '') ? $seller_product['variants'][0]['special_price'] : $seller_product['variants'][0]['price'];
                        //    print_r($variant_price);
                        $data_min = (isset($seller_product['minimum_order_quantity']) && !empty($seller_product['minimum_order_quantity'])) ? $seller_product['minimum_order_quantity'] : 1;
                        $data_step = (isset($seller_product['minimum_order_quantity']) && !empty($seller_product['quantity_step_size'])) ? $seller_product['quantity_step_size'] : 1;
                        $data_max = (isset($seller_product['total_allowed_quantity']) && !empty($seller_product['total_allowed_quantity'])) ? $seller_product['total_allowed_quantity'] : 0;
                        ?>
                        <?php if ($seller_product['availability'] == '' || $seller_product['availability'] == 1) { ?>
                            <a href="#" class="add_to_cart item-cart text-decoration-none" data-product-id="<?= $seller_product['id'] ?>" data-product-variant-id="<?= $variant_id ?>" data-product-title="<?= $seller_product['name'] ?>" data-product-image="<?= $seller_product['image']; ?>" data-product-price="<?= $variant_price; ?>" data-min="<?= $data_min; ?>" data-step="<?= $data_step; ?>" data-product-description="<?= short_description_word_limit(output_escaping(str_replace('\r\n', '&#13;&#10;', strip_tags($seller_product['short_description'])))); ?>" data-izimodal-open="<?= $modal ?>">
                                <i class="uil uil-shopping-cart-alt"></i>&nbsp;<?= !empty($this->lang->line('add_to_cart')) ? $this->lang->line('add_to_cart') : 'Add To Cart' ?>
                            </a>
                        <?php } ?>
                    </figure>
                    <div class="my-2 post-header">
                        <div class="align-items-center justify-content-between">
                            <input id="input" name="rating" class="rating rating-loading d-none" data-size="xs" value="<?= $seller_product['rating'] ?>" data-show-clear="false" data-show-caption="false" readonly>
                        </div>
                        <h4 class="post-title" title="<?= $seller_product['name']; ?>">
                            <?php if($seller_product['availability'] == '' || $seller_product['availability'] == 1) { ?>
                                <?php if(isset($seller_slug) && !empty($seller_slug) && $seller_slug != '') { ?>
                                    <a href="<?= base_url('sellers/' . $seller_product['seller_slug'] . '/products/details/' . $seller_product['slug']) ?>" class="link-dark text-decoration-none"><?= short_description_word_limit(output_escaping(str_replace('\r\n', '&#13;&#10;', strip_tags($seller_product['name']))), 25) ?></a>
                                <?php } else { ?>
                                    <a href="<?= base_url('products/details/' . $seller_product['slug']) ?>" class="link-dark text-decoration-none"><?= short_description_word_limit(output_escaping(str_replace('\r\n', '&#13;&#10;', strip_tags($seller_product['name']))), 25) ?></a>
                                <?php } ?>
                            <?php } else { ?>
                                <a class="link-dark text-decoration-none"><?= short_description_word_limit(output_escaping(str_replace('\r\n', '&#13;&#10;', strip_tags($seller_product['name']))), 25) ?>
                                </a>
                            <?php } ?>
                        </h4>
                        <?php if (($seller_product['variants'][0]['special_price'] < $seller_product['variants'][0]['price']) && ($seller_product['variants'][0]['special_price'] != 0)) { ?>
                            <p class="price text-muted">
                                <span id="price">
                                    <?php echo $settings['currency'] ?>
                                    <?php
                                    $price = $seller_product['variants'][0]['special_price'];
                                    echo format_price($price);
                                    ?>
                                </span>
                                <sup>
                                    <span class="special-price striped-price text-danger" id="product-striped-price-div">
                                        <s id="striped-price">
                                            <?php echo $settings['currency'] ?>
                                            <?php $price = $seller_product['variants'][0]['price'];
                                            echo format_price($price);
                                            // echo $price;
                                            ?>
                                        </s>
                                    </span>
                                </sup>
                            </p>
                        <?php } else { ?>
                            <p class="price text-muted">
                                <span id="price">
                                    <?php echo $settings['currency'] ?>
                                    <?php
                                    $price = $seller_product['variants'][0]['price'];
                                    echo format_price($price);
                                    ?>
                                </span>
                            </p>
                        <?php } $i++; 
                            }if($flag == 0){ ?>
                            <div class="col-12 text-center">
                                <h1 class="h2"><?= !empty($this->lang->line('no_product_found')) ? $this->lang->line('no_product_found') : 'No Products Found.' ?></h1>
                            </div>
                        <?php }
                        ?>
                    </div>
                    <!-- /.post-header -->
                </div>
            <?php } ?>
			
        </div>
    </div>
    </div>
</section>

<?php $web_settings = get_settings('web_settings', true); ?>
<?php if (isset($web_settings['app_download_section']) && $web_settings['app_download_section'] == 1) { ?>
    <section class="wrapper bg-soft-grape">
        <div class="align-items-md-center d-flex flex-wrap justify-content-center gap-5 pb-15">
            <div>
                <img class="w-100" src="<?= THEME_ASSETS_URL . 'demo/avtars/4530199.png' ?>" alt="Download - <?= $web_settings['app_download_section_title'] ?>" />
            </div>
            <div class="col-md-7">
                <h1 class="display-4 mb-4 px-md-10 px-lg-0"><?= $web_settings['app_download_section_title'] ?></h1>
                <h3 class="mt-3 header-p"><?= $web_settings['app_download_section_tagline'] ?></h3>
                <p class="lead fs-lg mb-7 px-md-10 px-lg-0 pe-xxl-15"><?= $web_settings['app_download_section_short_description'] ?></p>
                <span><a href="<?= $web_settings['app_download_section_appstore_url'] ?>" target="_blank" class="btn btn-dark btn-icon btn-icon-start rounded-pill me-2"><i class="uil uil-apple"></i>
                        App Store</a></span>
                <span><a href="<?= $web_settings['app_download_section_playstore_url'] ?>" target="_blank" class="btn btn-green btn-icon btn-icon-start rounded-pill"><i class="uil uil-google-play"></i>
                        Google Play</a></span>
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </section>
<?php } ?>