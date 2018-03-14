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
<div class="row products-category">
				<?php foreach ($products as $product) {/* << Product Option Image PRO module */ $poip_product_images_shown = false; /* variable to check and not show poip_img twice for the same product */ /* >> Product Option Image PRO module */  ?>
				<div class="product-layout product-list col-xs-12">
				<div class="product-container">
					<div class="item-inner">
						<div class="left-block">
							<div class="images-container">
								<div class="image"><a href="<?php echo $product['href']; ?>"><img class="image1" src="<?php echo $product['thumb']; ?>" <?php // Product Option Image PRO module << ?><?php if (!isset($current_class)) $current_class = time(); ?> data-poip_id="image_<?php echo "".$current_class."_".$product['product_id']; ?>" <?php   //  >> Product Option Image PRO module  ?>  alt="<?php echo $product['name']; ?>" /></a></div>								

      
      <?php // Product Option Image PRO module << ?>
			
      <?php  if ( !empty($poip_installed) && !empty($poip_theme_name)  && isset($product['option_images']) && $product['option_images'] && $poip_theme_name != "mattimeo"
        && $poip_theme_name != "bt_comohos" && $poip_theme_name != 'stowear' && $poip_theme_name != 'themegloballite' && $poip_theme_name != 'logancee' ) {
				
				if (!isset($poip_product_images_shown) ) $poip_product_images_shown = false;
				
				if (!$poip_product_images_shown) {
				
					if ( $poip_theme_name !== 'marketshop') {
						$poip_product_images_shown = true;
					}
				
					foreach ($product['option_images'] as $product_option_id => $option_images) {
						
						if ($poip_theme_name == "sellegance" || $poip_theme_name == "theme422"
							|| $poip_theme_name == "polianna" || $poip_theme_name == "moneymaker"
							 ) {
							
							echo "<div data-poip_id=\"poip_img\" style=\"  text-align: center; \">";
							$image_counter = 0;
							foreach ($option_images as $product_option_value_id => $option_image) {
								$image_counter++;
								echo "
												<a ". ($poip_theme_name!="mattimeo" ? "onmouseover=\"poip_show_thumb(this);\"" : "") ."
													style=\"display:inline;\" href=\"".$product['href'].(strpos($product['href'],'?')===false?'?':'&amp;')."poip_ov=".(int)$product_option_value_id."\"
													".( (isset($option_image['title']) && $option_image['title']) ? " title=\"".$option_image['title']."\" " : "" )."
													data-thumb=\"".$option_image['thumb']."\"
													data-image_id=\"".$current_class."_".$product['product_id']."\">
												<img src=\"".$option_image['icon']."\" alt=\"".( (isset($option_image['title']) && $option_image['title']) ? $option_image['title'] : "" )."\"></a>
											";
							}
							echo "</div>";
	
						} elseif ($poip_theme_name == "pav_styleshop" ) { // for product_module.tpl
							// just skip
							
						} elseif ($poip_theme_name == "bt_comohos" ) {
						
						} elseif ($poip_theme_name == "welldone" ) {
						
						} elseif ($poip_theme_name == "tt_minoan" ) {
							
            } elseif ($poip_theme_name == 'fastor') { 
						
							echo "<div data-poip_id=\"poip_img\" style=\"   \">";
							$image_counter = 0;
							foreach ($option_images as $product_option_value_id => $option_image) {
								$image_counter++;
								echo "
												<a onmouseover=\"poip_show_thumb(this);\" 
													style=\"display:inline;float:left;\" href=\"".$product['href'].(strpos($product['href'],'?')===false?'?':'&amp;')."poip_ov=".(int)$product_option_value_id."\"
													".( (isset($option_image['title']) && $option_image['title']) ? " title=\"".$option_image['title']."\" " : "" )."
													data-thumb=\"".$option_image['thumb']."\"
													data-image_id=\"".$current_class."_".$product['product_id']."\">
												<img src=\"".$option_image['icon']."\" class=\"img-thumbnail\" alt=\"".( (isset($option_image['title']) && $option_image['title']) ? $option_image['title'] : "" )."\"></a>
											";
							}
							echo "</div>";  
							
						} elseif ($poip_theme_name == "mariposa-purple") {
					
							echo "<div data-poip_id=\"poip_img\" style=\"  text-align: center; margin-top: 3px; \">";
							$image_counter = 0;
							foreach ($option_images as $product_option_value_id => $option_image) {
								$image_counter++;
								echo "
												<a onmouseover=\"poip_show_thumb(this);\" 
													style=\"display:inline;\" href=\"".$product['href'].(strpos($product['href'],'?')===false?'?':'&amp;')."poip_ov=".(int)$product_option_value_id."\"
													".( (isset($option_image['title']) && $option_image['title']) ? " title=\"".$option_image['title']."\" " : "" )."
													data-thumb=\"".$option_image['thumb']."\"
													data-image_id=\"".$current_class."_".$product['product_id']."\">
												<img style=\"width:auto;height:auto;\" src=\"".$option_image['icon']."\" class=\"img-thumbnail\"></a>
											";
							}
							echo "</div>";	
						
						} else { // OC 2.0 new style default
						
							echo "<div data-poip_id=\"poip_img\" style=\"  text-align: center; margin-top: 3px; \">";
							$image_counter = 0;
							foreach ($option_images as $product_option_value_id => $option_image) {
								$image_counter++;
								echo "
												<a onmouseover=\"poip_show_thumb(this);\" 
													style=\"display:inline;\" href=\"".$product['href'].(strpos($product['href'],'?')===false?'?':'&amp;')."poip_ov=".(int)$product_option_value_id."\"
													".( (isset($option_image['title']) && $option_image['title']) ? " title=\"".$option_image['title']."\" " : "" )."
													data-thumb=\"".$option_image['thumb']."\"
													data-image_id=\"".$current_class."_".$product['product_id']."\">
												<img src=\"".$option_image['icon']."\" class=\"img-thumbnail\" alt=\"".( (isset($option_image['title']) && $option_image['title']) ? $option_image['title'] : "" )."\"></a>
											";
											
								
											
							}
							echo "</div>";
						
						}
						
						/* OC 1.X old-style default
						} else {
						
							echo "<table data-poip_id=\"poip_img\" style=\"width: auto; padding:0px; border-collapse:collapse; border-spacing:0px; border:0px;\"><tr><td style='padding:0px;'>";
							$image_counter = 0;
							foreach ($option_images as $product_option_value_id => $option_image) {
								$image_counter++;
								if ($image_counter % 5 == 0) echo "<br>";
								echo "<div class=\"image\" style=\"float:left; margin-left:0px; margin-right:0px; \">
												<a onmouseover=\"poip_show_thumb(this);\" href=\"".$product['href'].(strpos($product['href'],'?')===false?'?':'&amp;')."poip_ov=".(int)$product_option_value_id."\"
													".( (isset($option_image['title']) && $option_image['title']) ? " title=\"".$option_image['title']."\" " : "" )."
													data-thumb=\"".$option_image['thumb']."\"
													data-image_id=\"".$current_class."_".$product['product_id']."\">
												<img src=\"".$option_image['icon']."\" alt=\"".( (isset($option_image['title']) && $option_image['title']) ? $option_image['title'] : "" )."\"></a>
											</div>";
											
								if ($image_counter % 4 == 0) echo "<br>";
							}
							echo "</td></tr></table>";
						}
						*/
					}
				}
      } ?>
      <?php //  >> Product Option Image PRO module ?>
      
							</div>
						</div>
						<div class="right-block">

      <?php // Product Option Image PRO module << ?>
      <?php  if ( !empty($poip_installed) && !empty($poip_theme_name)  && isset($product['option_images']) && $product['option_images']
							&& ($poip_theme_name == "bt_comohos" || $poip_theme_name == "theme573" || $poip_theme_name == "theme628" || $poip_theme_name == 'theme630' || $poip_theme_name == "theme640") ) {
			
				if (!isset($poip_product_images_shown)) $poip_product_images_shown = false;
				
				if (!$poip_product_images_shown) {
				
					$poip_product_images_shown = true;
				
					foreach ($product['option_images'] as $product_option_id => $option_images) {
						
						echo "<div data-poip_id=\"poip_img\" style=\"  text-align: left; margin-top: 3px; width:100%; \">";
						$image_counter = 0;
						foreach ($option_images as $product_option_value_id => $option_image) {
							$image_counter++;
							echo "
											<a onmouseover=\"poip_show_thumb(this);return false;\"
												style=\"display:inline;\" href=\"".$product['href'].(strpos($product['href'],'?')===false?'?':'&amp;')."poip_ov=".(int)$product_option_value_id."\"
												".( (isset($option_image['title']) && $option_image['title']) ? " title=\"".$option_image['title']."\" " : "" )."
												data-thumb=\"".$option_image['thumb']."\"
												data-image_id=\"".$current_class."_".$product['product_id']."\">
											<img src=\"".$option_image['icon']."\" class=\"img-thumbnail\" width=\"23\" height=\"23\" alt=\"".( (isset($option_image['title']) && $option_image['title']) ? $option_image['title'] : "" )."\"></a>
										";
						}
						echo "</div>";
					}
				}
      } ?>
      <?php //  >> Product Option Image PRO module ?>
      

      <?php // Product Option Image PRO module << ?>
      <?php  if ( !empty($poip_installed) && !empty($poip_theme_name)  && isset($product['option_images']) && $product['option_images'] && $poip_theme_name == 'opc1000') {
      
        foreach ($product['option_images'] as $product_option_id => $option_images) {
          
					echo "<div data-poip_id=\"poip_img\" style=\"  text-align: center; margin-top: 3px; \">";
          $image_counter = 0;
          foreach ($option_images as $product_option_value_id => $option_image) {
            $image_counter++;
            echo "
                    <a onmouseover=\"poip_show_thumb(this);\" 
                      style=\"display:inline;\" href=\"".$product['href'].(strpos($product['href'],'?')===false?'?':'&amp;')."poip_ov=".(int)$product_option_value_id."\"
                      ".( (isset($option_image['title']) && $option_image['title']) ? " title=\"".$option_image['title']."\" " : "" )."
                      data-thumb=\"".$option_image['thumb']."\"
                      data-image_id=\"".$current_class."_".$product['product_id']."\">
                    <img src=\"".$option_image['icon']."\" class=\"img-thumbnail\" alt=\"".( (isset($option_image['title']) && $option_image['title']) ? $option_image['title'] : "" )."\"></a>
                  ";
          }
          echo "</div>";
					
        }
      
      } ?>
      <?php //  >> Product Option Image PRO module ?>
      
							<div class="caption">

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
			
								<div class="des-container">
									<div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
									<?php if (isset($product['rating'])) { ?>
									<div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt=""  /></div>
									<?php } ?>
									<div class="price-box">
										<?php if ($product['price']) { ?>
										<p class="price">
										  <?php if (!$product['special']) { ?>
										  <?php echo $product['price']; ?>
										  <?php } else { ?>
										  <span class="price-new"><?php echo $product['special']; ?></span> 
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

<script type="text/javascript">
    // Product List
    $('#list-view').click(function() {
        $('#content .product-layout > .clearfix').remove();

        $('#content .product-layout').attr('class', 'product-layout product-list col-xs-12');

        localStorage.setItem('display', 'list');
    });

    // Product Grid
    $('#grid-view').click(function() {
        $('#content .product-layout > .clearfix').remove();

        // What a shame bootstrap does not take into account dynamically loaded columns
        cols = $('#column-right, #column-left').length;

        if (cols == 2) {
            $('#content .product-layout').attr('class', 'product-layout product-grid col-lg-6 col-md-6 col-sm-12 col-xs-12');
        } else if (cols == 1) {
            $('#content .product-layout').attr('class', 'product-layout product-grid col-lg-4 col-md-4 col-sm-6 col-xs-12');
        } else {
            $('#content .product-layout').attr('class', 'product-layout product-grid col-lg-3 col-md-3 col-sm-6 col-xs-12');
        }

        localStorage.setItem('display', 'grid');
    });
</script>

