<div class="featured-container">
		  <div class="featured-sldier-title"><h2><?php echo $title; ?></h2></div>
		  <?php
			  $count = 0;
			  $rows = $config_slide['f_rows'];
			  if(!$rows) { $rows=1; }
		   ?>
		  <div class="row">
			  <div class="featured-product-slider">
				<?php if($products): ?>
						<?php foreach ($products as $product) { ?>
						<?php  if($count % $rows == 0 ) { echo '<div class="row_items">'; } $count++; ?>
						<div class="item">
						  <div class="item-inner">
							<?php if($config_slide['f_show_label']): ?>
							  <?php if ($product['is_new']):
								if($product['special']): ?>
								  <div class="sale"><?php echo $text_sale; ?></div>
								<?php else: ?>
								  <div class="new"><?php echo $text_new; ?></div>
								<?php endif; ?>
							  <?php else: ?>
								<?php if($product['special']): ?>
								  <div class="sale"><?php echo $text_sale; ?></div>
								<?php endif; ?>
							  <?php endif; ?>
							<?php endif; ?>
							<div class="images-container">
								<?php if ($product['thumb']) { ?>
									<div class="image"><a href="<?php echo $product['href']; ?>"><img class="image1" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" />
									<?php if(isset($product['rotator_image2']) && $product['rotator_image2'] != ""): ?>
											<img class="image2" src="<?php echo $product['rotator_image2'] ?>" alt="" />
									<?php endif; ?></a></div>
									<?php } else { ?>
									<div class="image"><a href="<?php echo $product['href']; ?>"><img src="image/cache/no_image-100x100.png" alt="<?php echo $product['name']; ?>" /></a></div>
								<?php } ?>
							</div>
							<div class="des-container">
								<div class="box-content">
									<div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
									<?php if (isset($product['rating'])) { ?>
									<div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="" /></div>
									<?php } ?>
									<?php if($config_slide['f_show_des']){ ?>
									<p><?php echo $product['description']; ?></p>
									<?php } ?>
									<?php if($config_slide['f_show_price']){ ?>
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
									</p> <?php } ?>
									<?php } ?>
								</div>
								<div class="actions">
									<div class="button-group">
										<div class="cart">
											<?php if($config_slide['f_show_addtocart']) { ?>
											<button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><span><?php echo $button_cart; ?></span></button>
											<?php } ?>
										</div>
										<div class="wishlist"><button type="button" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><span><?php echo $button_wishlist; ?></span></button></div>
										<div class="compare"><button type="button" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><span><?php echo $button_compare; ?></span></button></div>
									 </div>
								</div>
							</div>
						</div> <!-- item-inner -->
					  </div> <!-- item -->
					  <?php if($count % $rows == 0 || $count == count($products)): ?>
					</div>
					<?php endif; ?>
					<?php } ?>
				<?php else: ?>
				  <p><?php echo $text_empty; ?></p>
				<?php endif; ?>
			  </div>
		  </div>
</div>
<script type="text/javascript">
  $(document).ready(function() {
    $(".featured-product-slider").owlCarousel({
      autoPlay: <?php if($config_slide['autoplay']) { echo 'true' ;} else { echo 'false'; } ?>,
    items : <?php if($config_slide['items']) { echo $config_slide['items'] ;} else { echo 3; } ?>,
    slideSpeed : <?php if($config_slide['f_speed']) { echo $config_slide['f_speed']; } else { echo 200;} ?>,
    navigation : <?php if($config_slide['f_show_nextback']) { echo 'true' ;} else { echo 'false'; } ?>,
    paginationNumbers : true,
    pagination : <?php if($config_slide['f_show_ctr']) { echo 'true' ;} else { echo 'false';} ?>,
    stopOnHover : false,
	itemsDesktop : [1199,2],
	itemsDesktopSmall : [991,2],
	itemsTablet: [680,1],
	itemsMobile : [480,1]
  });
  });
</script>