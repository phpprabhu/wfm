<div class="special-products">
	<div class="special-title"><h2><?php echo $heading_title; ?></h2></div>
	<?php foreach ($products as $product) {/* << Product Option Image PRO module */ $poip_product_images_shown = false; /* variable to check and not show poip_img twice for the same product */ /* >> Product Option Image PRO module */  ?>
	<div class="product-layout">
		<div class="product-thumb transition item-special">
		  <div class="image"><a href="<?php echo $product['href']; ?>">
<img data-original="
            <?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>

			<?php // Product Option Image PRO module << ?>
			
      <?php if ( !empty($poip_installed) && isset($product['option_images']) && $product['option_images'] && $poip_theme_name != "mattimeo") {
			
				foreach ($product['option_images'] as $product_option_id => $option_images) {
					
					if ( $poip_theme_name == 'stowear' || $poip_theme_name == 'themegloballite' || $poip_theme_name == 'logancee' ) {
					
						echo "<div data-poip_id=\"poip_img\" style=\" display:inline-block;  \">";
						$image_counter = 0;
						foreach ($option_images as $product_option_value_id => $option_image) {
							$image_counter++;
							echo "
											<a onmouseover=\"poip_show_thumb(this);\" 
												style=\"display:inline;\" href=\"".$product['href'].(strpos($product['href'],'?')===false?'?':'&')."poip_ov=".(int)$product_option_value_id."\"
												".( (isset($option_image['title']) && $option_image['title']) ? " title=\"".$option_image['title']."\" " : "" )."
												data-thumb=\"".$option_image['thumb']."\"
												data-image_id=\"".$current_class."_".$product['product_id']."\">
											<img src=\"".$option_image['icon']."\" class=\"img-thumbnail\"></a>
										";
						}
						echo "</div>";
					
					}
				}
      } ?>
      <?php //  >> Product Option Image PRO module ?>
			
		  <div class="special-content">
				<div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
				<p class="description"><?php echo $product['description']; ?></p>
				<?php if (isset($product['rating'])) { ?>
					<div class="rating">
<img data-original="
            catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="" /></div>
				<?php } ?>
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
		</div>
	</div>
	<?php } ?>
</div>
