<?php echo $header; ?>
<div class="container">
<div class="content-top">
	<h1><?php echo $heading_title; ?></h1>
	<ul class="breadcrumb">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
		<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
		<?php } ?>
	</ul>
</div>
</div>

<div class="container layer-category">
    <div class="layered-navigation-block"></div>
    <div class="ajax-loader">
        <img src="<?php echo $oclayerednavigation_loader_img; ?>" alt="loader" title="loader" />
    </div>
    <div class="row"><?php echo $column_left; ?>
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-9'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-12'; ?>
        <?php } ?>
        <div id="content" class="<?php echo $class; ?>">
			<?php if($description) { echo $description; } ?>
			<?php echo $content_top; ?>
            <div class="custom-category">
                <?php if ($products) { ?>
                <div class="product-filter">
					<div class="btn-group">
						<button type="button" id="list-view" class="btn btn-default" title="<?php echo $button_list; ?>"><i class="fa fa-th-list"></i></button>
						<button type="button" id="grid-view" class="btn btn-default" title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button>
					</div>
                    <div class="sort">
                        <label class="control-label" for="input-sort"><?php echo $text_sort; ?></label>
                        <select id="input-sort" class="form-control" onchange="oclayerednavigationajax.filter(this.value)">
                            <?php foreach ($sorts as $sorts) { ?>
                            <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                            <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
                            <?php } else { ?>
                            <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
                            <?php } ?>
                            <?php } ?>
                        </select>
                    </div>
                    <div class="limit">
                        <label class="control-label" for="input-limit"><?php echo $text_limit; ?></label>
                        <select id="input-limit" class="form-control" onchange="oclayerednavigationajax.filter(this.value)">
                            <?php foreach ($limits as $limits) { ?>
                            <?php if ($limits['value'] == $limit) { ?>
                            <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
                            <?php } else { ?>
                            <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
                            <?php } ?>
                            <?php } ?>
                        </select>
                    </div>
                </div>
        <div class="custom-products">
            <div class="row products-category">
				<?php foreach ($products as $product) { ?>
				<div class="product-layout product-list col-xs-12">
				<div class="product-container">
					<div class="item-inner">
						<div class="left-block">
							<div class="images-container">
								<div class="image"><a href="<?php echo $product['href']; ?>"><img class="image1" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>							
							</div>
						</div>
						<div class="right-block">
							<div class="caption">
								<div class="des-container">
									<div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
									<?php if (isset($product['rating'])) { ?>
									<div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="star-rating"  /></div>
									<?php } ?>
									<div class="price-box">
										<?php if ($product['price']) { ?>
										<p class="price">
										  <?php if (!$product['special']) { ?>
										  <?php echo $product['price']; ?>
										  <?php } else { ?>
										  <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
										  <?php } ?>
										  <?php if ($product['tax']) { ?>
										  <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
										  <?php } ?>
										</p>
										<?php } ?>
									</div>
									<p class="description"><?php echo $product['description']; ?></p>
									
								</div>
							</div>
						</div>
					</div>
				</div>
				</div>
				<?php } ?>
				</div>
                </div>
                <div class="row">
                    <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
                    <div class="col-sm-6 text-right"><?php echo $results; ?></div>
                </div>
                <?php } ?>
                <?php if (!$categories && !$products) { ?>
                <p><?php echo $text_empty; ?></p>
                <div class="buttons">
                    <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
                </div>
                <?php } ?>
            </div>
            <?php echo $content_bottom; ?></div>
        <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
