<section class="mt-3 sticky-header-wrapper">
    <div class="container pb-md-1 pt-md-14 py-lg-1 overflow-hidden">
        <div class="row pt-5 align-items-center">

            <!-- Swiper -->
            <div class="swiper-container category-swiper" data-dots="true">
                <div class="swiper-wrapper swiper-slide-category">
                    

                    <?php $default_market = ''; foreach ($markets as $key => $row) { 
                        if($row['market_status'] == "1") { $default_market = $row['market_name'];?>
                        <div class="swiper-slide swiper-slide-category mx-2 pt-2 rounded <?php if($row['market_default'] == 1) echo "border border-3 border-grey px-2"; ?>">
                            <a href="<?= base_url('markets/' . html_escape($row['market_slug'])) ?>" class="text-decoration-none">
                                <img class="lazy" src="<?= base_url('assets/front_end/modern/img/product-placeholder.jpg') ?>" data-src="<?= base_url() . $row['market_img'] ?>" alt="<?= html_escape($row['market_name']) ?>" />
                                <h6 class="fs-14 mb-0"><?= html_escape($row['market_name']) ?></h6>
                            </a>
                        </div>
                    <?php } } ?>

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

<section class="container listing-page mb-15">
    <div class="product-listing card-solid py-4">
        <div class="row mx-0">
            <!-- Dektop Sidebar -->
            <!-- remved filters -->
            <!-- <div class="col-md-12 order-md-2"> -->
            <div class='my-4 featured-section-title'>
            <?php $flag = 0; foreach ($markets as $row) { if($row['market_default'] == '1') { $flag = 1; ?>
                <div class='col-md-12 border border-grey rounded'>
                    <h3 class='section-title text-center pt-2'><?= !empty($this->lang->line('market')) ? $this->lang->line('market') : $row['market_name'] . ' Sellers'?></h3>
                </div>
                <?php } } if ($flag == '0') { ?>
                    <div class='col-md-12'>
                        <h3 class='section-title text-center pt-2'><?= !empty($this->lang->line('market')) ? $this->lang->line('market') : 'No Default Markets'?></h3>
                    </div>
                <?php } ?>
                <!-- <hr class="mt-6 mb-6"> -->
            </div>
            <div class="container-fluid filter-section pb-3">
                <div class="col-12 pl-0">
                    <div class="dropdown">
                        <div class="filter-bars">
                            <div class="menu js-menu">
                                <span class="menu__line"></span>
                                <span class="menu__line"></span>
                                <span class="menu__line"></span>

                            </div>
                        </div>
                            <div class="align-items-center d-flex flex-wrap">
                                <div class="col-md-2 pl-0">
                                    <!-- <label for="product_sort_by"></label> -->
                                    <select id="product_sort_by" class="form-control">
                                        <option><?= !empty($this->lang->line('relevance')) ? $this->lang->line('relevance') : 'Relevance' ?></option>
                                        <option value="top-rated" <?= ($this->input->get('sort') == "top-rated") ? 'selected' : '' ?>><?= !empty($this->lang->line('top_rated')) ? $this->lang->line('top_rated') : 'Top Rated' ?></option>
                                        <option value="date-desc" <?= ($this->input->get('sort') == "date-desc") ? 'selected' : '' ?>><?= !empty($this->lang->line('newest_first')) ? $this->lang->line('newest_first') : 'Newest First' ?></option>
                                        <option value="date-asc" <?= ($this->input->get('sort') == "date-asc") ? 'selected' : '' ?>><?= !empty($this->lang->line('oldest_first')) ? $this->lang->line('oldest_first') : 'Oldest First' ?></option>
                                    </select>
                                </div>
                                <div class="col-md-5 pl-0">
                                    <input type="text" name="seller_search" class="form-control" id="seller_search_txt" value="<?= (isset($seller_search) && !empty($seller_search)) ? $seller_search : "" ?>" placeholder="<?= !empty($this->lang->line('search_seller')) ? $this->lang->line('search_seller') : 'Search Seller' ?>">
                                </div>
                                <div class="col-md-1 pl-0">
                                    <button type="button" class="btn btn-primary btn-sm ml-0" id="seller_search_btn" style="padding-left: 0px !important;padding-right: 0px !important;"><?= !empty($this->lang->line('search')) ? $this->lang->line('search') : 'Search' ?></button>
                                </div>
                                <div class="col-md-1 pl-0">
                                    <button type="button" class="btn btn-primary btn-sm ml-0" id="seller_clear_btn" style="padding-left: 10px !important;padding-right: 10px !important;"><?= !empty($this->lang->line('clear')) ? $this->lang->line('clear') : 'Clear' ?></button>
                                </div>
                                <div class="dropdown float-md-right form-select-wrapper">
                                    <div class="align-items-baseline d-flex">
                                        <label class="mr-2 dropdown-label"> <?= !empty($this->lang->line('show')) ? $this->lang->line('show') : 'Show' ?>:</label>
                                        <a class="dropdown-border form-select col-4 mr-2" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><?= ($this->input->get('per-page', true) ? $this->input->get('per-page', true) : '12') ?> <span class="caret ms-4"></span></a>
                                        <a href="#" id="product_grid_view_btn" class="grid-view text-dark text-decoration-none"><i class="fs-20 uil uil-th"></i></a>
                                        <a href="#" id="product_list_view_btn" class="grid-view ps-3 text-dark text-decoration-none"><i class="fs-20 uil uil-list-ul"></i></a>
                                        <div class="dropdown-menu custom-dropdown-menu" aria-labelledby="navbarDropdown" id="per_page_sellers">
                                            <a class="dropdown-item" href="#" data-value=12>12</a>
                                            <a class="dropdown-item" href="#" data-value=16>16</a>
                                            <a class="dropdown-item" href="#" data-value=20>20</a>
                                            <a class="dropdown-item" href="#" data-value=24>24</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                    </div>
                </div>

                <?php if (isset($sellers) && !empty($sellers)) { ?>

                    <?php if (isset($_GET['type']) && $_GET['type'] == "list") { ?>
                        <div class="col-md-12 col-sm-6">
                            <div class="row mt-4">
                                <?php foreach ($sellers as $row) { ?>
                                    <div class="card mt-5" title="<?= $row['seller_name'] ?>">
                                        <div class="align-items-center row d-flex">
                                            <div class="col-lg-3 col-5">
                                                <div class="">
                                                    <div class="product-image">
                                                         <div class="product-image-container product-sm-image-container">
                                                            <a href="<?= base_url('sellers/' . $row['slug']) ?>" target="_blank">
                                                                <img class="pic-1 lazy blog-img  mw-100 mh-auto h-auto" src="<?= base_url('assets/front_end/modern/img/product-placeholder.jpg') ?>" data-src="<?= $row['seller_profile'] ?>">
                                                                <?php $row['seller_profile']; ?>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-9 col-7">
                                                <div class="product-content">
                                                    <h3 class="list-product-title title fs-25 mt-4" title="<?= $row['seller_name'] ?>"><a href="<?= base_url('sellers/' . $row['slug']) ?>" target="_blank"><?= $row['seller_name'] ?></a></h3>
                                                    <div class="rating">
                                                        <input id="input" name="rating" class="rating rating-loading d-none" data-size="xs" value="<?= number_format($row['seller_rating'], 1) ?>" data-show-clear="false" data-show-caption="false" readonly>
                                                    </div>
                                                    <p class="title mb-2 list-view-price">
                                                        <?= $row['store_name'] ?>
                                                    </p>
                                                    <p class="text-muted list-product-desc m-0"><?= $row['store_description'] ?></p>
													<div class="d-none d-md-block ">
                                                    <a href="<?= base_url('sellers/seller_details/' . $row['slug']) ?>" target="_blank" class="view-products  btn btn-sm btn-outline-primary rounded-pill my-2"><?= !empty($this->lang->line('about_seller')) ? $this->lang->line('about_seller') : 'About Seller' ?></a>
                                                    <a href="<?= base_url('sellers/'. $row['slug'] .'/products') ?>" target="_blank" class="view-products  btn btn-sm btn-outline-primary rounded-pill my-2"><?= !empty($this->lang->line('view_products')) ? $this->lang->line('view_products') : 'View Products' ?></a>
														 </div>
                                                </div>
                                            </div>
											<div class="d-block d-md-none">
                                            <a href="<?= base_url('sellers/seller_details/' . $row['slug']) ?>" target="_blank" class="view-products  btn btn-sm btn-outline-primary rounded-pill my-2"><?= !empty($this->lang->line('about_seller')) ? $this->lang->line('about_seller') : 'About Seller' ?></a>
                                                    <a href="<?= base_url('sellers/'. $row['slug'] .'/products') ?>" target="_blank" class="view-products  btn btn-sm btn-outline-primary rounded-pill my-2"><?= !empty($this->lang->line('view_products')) ? $this->lang->line('view_products') : 'View Products' ?></a>
                                            </div>

                                        </div>
                                    </div>
                                <?php } ?>
                            </div>
                        </div>

                    <?php } else { ?>

                        <div class="row">
                            <?php foreach ($sellers as $row) { ?>
                                <div class="col-lg-4 col-md-6 col-sm-12 mt-5 " title="<?= $row['seller_name'] ?>">
                                    <div class="card text-center">
                                        <!-- <div class="product-image"> -->
                                        <div class="seller-image-container mx-auto mw-100">
                                            <a href="<?= base_url('sellers/' . $row['slug']) ?>" target="_blank">
                                                <img class="pic-1 lazy fig_seller_image" src="<?= base_url('assets/front_end/modern/img/product-placeholder.jpg') ?>" data-src="<?=  $row['seller_profile'] ?>">
                                            </a>
                                        </div>
                                        <!-- </div> -->
                                        <div class="rating">
                                            <input id="input" name="rating" class="rating rating-loading d-none" data-size="xs" value="<?= number_format($row['seller_rating'], 1) ?>" data-show-clear="false" data-show-caption="false" readonly>
                                        </div>
                                        <div class="product-content my-3">
                                            <h4 class="title m-0" title="<?= $row['seller_name'] ?>"><a class="text-decoration-none text-dark" href="<?= base_url('sellers/' . $row['slug']) ?>" target="_blank"><?= $row['seller_name'] ?></a></h4>
                                            <p class="price fs-14 mb-2">
                                                <?= $row['store_name'] ?>
                                            </p>
                                            <a href="<?= base_url('sellers/seller_details/' . $row['slug']) ?>" target="_blank" class="view-products  btn btn-xs btn-outline-primary rounded-pill"><?= !empty($this->lang->line('about_seller')) ? $this->lang->line('about_seller') : 'About Seller' ?></a>
                                            <a href="<?= base_url('sellers/'. $row['slug'] .'/products') ?>" target="_blank" class="view-products btn btn-xs btn-outline-primary rounded-pill"><?= !empty($this->lang->line('view_products')) ? $this->lang->line('view_products') : 'View Products' ?></a>

                                        </div>
                                    </div>
                                </div>
                            <?php } ?>
                        </div>
                    <?php } ?>
                <?php } ?>

                <?php if (!isset($sellers) || empty($sellers)) { ?>
                    <div class="col-12 text-center mt-5 pt-5">
                        <h1 class="h2"><?= !empty($this->lang->line('no_sellers_found')) ? $this->lang->line('no_sellers_found') : 'No Sellers Found.' ?></h1>
                        <a href="<?= base_url('products') ?>" class="btn rounded-pill btn-warning"><?= !empty($this->lang->line('go_to_shop')) ? $this->lang->line('go_to_shop') : 'Go to Shop' ?></a>
                    </div>
                <?php } ?>
                <nav class="text-center mt-4">
                    <?= (isset($links)) ? $links : '' ?>
                </nav>
            </div>
            <!-- </div> -->
        </div>
    </div>
</section>

<!-- <section class="container listing-page mb-15">
    <div class="product-listing card-solid py-4">
        <div class="row mx-0">  
            <div class='my-4 featured-section-title'>
            <?php $flag = 0; foreach ($markets as $row) { if($row['market_default'] == '1') { $flag = 1; ?>
                <div class='col-md-12 border border-grey rounded'>
                    <h3 class='section-title text-center pt-2'><?= !empty($this->lang->line('market')) ? $this->lang->line('market') : $row['market_name'] . ' Sellers'?></h3>
                </div>
                <?php } } if ($flag == '0') { ?>
                    <div class='col-md-12'>
                        <h3 class='section-title text-center pt-2'><?= !empty($this->lang->line('market')) ? $this->lang->line('market') : 'No Default Markets'?></h3>
                    </div>
                <?php } ?>
                <hr class="mt-6 mb-6">
            </div>
            <div class="row">
                <?php echo var_dump($sellers); foreach ($sellers as $row) { if($row['market'] == $default_market){?>
                    <div class="col-md-4 col-6 mt-5 " title="<?= $row['seller_name'] ?>">
                        <div class="card text-center">
                            <div class="product-image">
                            <div class="seller-image-container">
                                <a href="<?= base_url('sellers/' . $row['slug']) ?>">
                                    <img class="pic-1 lazy fig_seller_image" src="<?= base_url('assets/front_end/modern/img/product-placeholder.jpg') ?>" data-src="<?= $row['seller_profile'] ?>">
                                </a>
                            </div>
                            </div>
                            <div class="rating">
                                <input id="input" name="rating" class="rating rating-loading d-none" data-size="xs" value="<?= number_format($row['seller_rating'], 1) ?>" data-show-clear="false" data-show-caption="false" readonly>
                            </div>
                            <div class="product-content my-3">
                                <h4 class="title m-0" title="<?= $row['seller_name'] ?>"><a class="text-decoration-none text-dark" href="<?= base_url('sellers/seller_details/' . $row['slug']) ?>"><?= $row['seller_name'] ?></a></h4>
                                <p class="price fs-14 mb-2">
                                    <?= $row['store_name'] ?>
                                </p>
                                <a href="<?= base_url('sellers/seller_details/' . $row['slug']) ?>" class="view-products  btn btn-xs btn-outline-primary rounded-pill"><?= !empty($this->lang->line('about_seller')) ? $this->lang->line('about_seller') : 'About Seller' ?></a>
                                <a href="<?= base_url('products?seller=' . $row['slug']) ?>" class="view-products btn btn-xs btn-outline-primary rounded-pill"><?= !empty($this->lang->line('view_products')) ? $this->lang->line('view_products') : 'View Products' ?></a>
                            </div>
                        </div>
                    </div>
                <?php } } ?>
            </div>
        </div>
    </div>
</section> -->

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
