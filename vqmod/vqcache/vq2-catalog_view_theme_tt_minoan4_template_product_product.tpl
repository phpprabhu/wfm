<?php echo $header; ?>
<div class="container cont-align-center">
	<ul class="breadcrumb">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
		<?php if($heading_title!=$breadcrumb['text']){ ?>
		<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
		<?php } } ?>
	</ul>
<div class="content-top">
	<h1><?php echo $heading_title; ?></h1><div class="star-links">
		<?php for ($i = 1; $i <= 5; $i++) { ?>
		<?php if ($rating < $i) { ?>
		<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
		<?php } else { ?>
		<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
		<?php } ?>
		<?php } ?></div>
</div>
</div>
<div class="container">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
	<div class="product-view">
		<div class="row">
			<div id="user-security-info"  style="width:25%;float:right;border: 1px solid #c2c2c2;line-height: 40px;padding:10px;margin-top:99px;">
				<a href="https://www.paypal.com/in/webapps/mpp/paypal-buyer-protection" target="_blank"><img src="image/paypal-buyer-protection-logo.png" title="Paypal Buyer Protection" /></a>
							<ul class="b-add_order__advantage">
								<li class="b-add_order__advantage__item--world">
									<i class="fa fa-truck" aria-hidden="true"></i> <b style="font-weight: bold">Free</b> Worldwide Shipping											</li>
								<li class="b-add_order__advantage__item--guarantee">
									<i class="fa fa-money" aria-hidden="true"></i> <b style="font-weight: bold">Full Refund</b>  if don't receive your order										</li>
								<li class="b-add_order__advantage__item--secure">
									<i class="fa fa-lock" aria-hidden="true"></i> <b style="font-weight: bold">100%</b> Secure Payments										</li>
							</ul>
			</div>
		<div class="col-md-9 col-sm-9 col-sms-12">
			<div class="row">
			<?php if ($column_left && $column_right) { ?>
			<?php $class = 'col-md-6 col-sm-6 col-sms-12 col-xs-12 view-zoom'; ?>
			<?php } elseif ($column_left || $column_right) { ?>
			<?php $class = 'col-md-6 col-sm-6 col-sms-12 col-xs-12 view-zoom'; ?>
			<?php } else { ?>
			<?php $class = 'col-sm-6'; ?>
			<?php } ?>
			<div class="<?php echo $class; ?>">
			  <div class="image-block">
					  <?php if ($thumb || $images) { ?>
					  <div class="thumbnails-image">
						<?php if ($thumb) { ?>
						<a class="thumbnail" title="<?php echo $heading_title; ?>"><img src="<?php echo $thumb; ?>" data-zoom-image="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
						<?php } ?>
				</div>
				<div class="image-additional" id="gallery_01">
			   <?php if ($thumb) { ?>
						<a class="thumbnail" href="#" data-image="<?php echo $thumb; ?>" data-zoom-image="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
						<?php } ?>
						<?php if ($images) { ?>
						<?php foreach ($images as $image) { ?>

      <?php if ( ($poip_theme_name == 'goshop'
							|| ($poip_theme_name == 'fastor' && $theme_options->get( 'product_image_zoom' ) != 2)
							|| $poip_theme_name == 'journal2'
							|| $poip_theme_name == 'OPC080191'
							|| $poip_theme_name == 'BurnEngine_pavilion'
							|| $poip_theme_name == 'BurnEngine_technopolis'
							|| $poip_theme_name == 'BurnEngine_shoppica'
							) && !empty($poip_installed) && !empty($popup)  ) {
      // Product Option Image PRO module <<
      // to not show the main image twice
      if ( $image['popup'] == $popup ) continue;
      // >> Product Option Image PRO module
      } ?>
      
						<a class="thumbnail" href="#" data-image="<?php echo $image['thumb']; ?>" data-zoom-image="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>"> <img  
      src="<?php echo $image['thumb']; ?>" title="<?php echo ( (isset($image['title']) && $image['title']) ? ' '.$image['title'] : $heading_title); ?>" alt="<?php echo ((isset($image['title']) && $image['title']) ? ' '.$image['title'] : $heading_title); ?>"
       /></a>
						<?php } ?>
						<?php } ?>
					  </div>
					  <?php } ?>
					 </div> 
			</div>
			<?php if ($column_left && $column_right) { ?>
			<?php $class = 'col-md-6 col-sm-6 col-sms-12 col-xs-12'; ?>
			<?php } elseif ($column_left || $column_right) { ?>
			<?php $class = 'col-md-6 col-sm-6 col-sms-12 col-xs-12'; ?>
			<?php } else { ?>
			<?php $class = 'col-sm-6'; ?>
			<?php } ?>
			<div class="<?php echo $class; ?>">				
				<ul class="list-unstyled">
				<?php if ($manufacturer) { ?>
				<li><?php echo $text_manufacturer; ?> <a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a></li>
				<?php } ?>
				<li><?php echo $text_model; ?> <?php echo $model; ?></li>
				<?php if ($reward) { ?>
				<li><?php echo $text_reward; ?> <?php echo $reward; ?></li>
				<?php } ?>
				<li><?php echo $text_stock; ?> <?php echo $stock; ?></li>
				<li><?php echo $order_processed; ?> Orders</li>
				</ul>				
			  <?php if ($price) { ?>
			  <div class="price">
				<?php if (!$special) { ?>
				<?php echo $price; ?>
				<?php } else { ?>

				  <img src="image/catalog/offer/newyear-product-offer.jpg" width="100%" height="100%" alt="Flat 20% Off New Year 2018 - Wowflashy.com" title="Flat 20% Off New Year 2018 - Wowflashy.com" />
				<div style="margin-top:10px;"><span class="price-text-style discount-price-padding">Price: </span><span class="price-orange"><?php echo $special; ?></span><img src="image/catalog/free_shipping.png" style="padding-left:40px;" alt="wowflashy-free shipping" title="wowflashy-free shipping"></div>				 
				<?php } ?>
				<span class="price-tax">
				<?php if ($tax) { ?>
				<?php echo $text_tax; ?> <?php echo $tax; ?>
				<?php } ?>
				</span>
				<?php if ($points) { ?>
				<?php //echo $text_points; ?> <?php //echo $points; ?>
				<?php } ?>
				<?php if ($discounts) { ?>
				<?php foreach ($discounts as $discount) { ?>
				<?php //echo $discount['quantity']; ?><?php //echo $text_discount; ?><?php //echo $discount['price']; ?>
				<?php } ?>
				<?php } ?>				  
			  </div>
			  <?php } ?>
			  <div class="description"><h2>
					<?php
						echo $shortdescription;
					?></h2>
				</div>
			  <div id="product">
					 <?php if ($options) { ?>
            <h3><?php echo $text_option; ?></h3>
            <?php foreach ($options as $option) { ?>
            <?php if ($option['type'] == 'select') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                <?php if ($option_value['price']) { ?>
                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                <?php } ?>
                </option>
                <?php } ?>
              </select>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'radio') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="radio" style="width: 66px;float: left;">
                  <label>
                    <div class="align-center"><input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" /></div>

			<?php
			// << Product Option Image PRO module

			if ($option['type'] == 'radio' && isset($option_value['poip_image']) && $option_value['poip_image'] ) {
				?>
				<img src="<?php echo $option_value['poip_image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> 
				<?php
			}
			
      // >> Product Option Image PRO module
			?>
			
                    <div><?php if ($option_value['price']) { ?>
						(<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
						<?php } ?>
					</div>
					 <div class="align-center"><?php echo $option_value['name']; ?></div>
                    
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'checkbox') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="checkbox">
                  <label>
                    <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" />

			<?php
			// << Product Option Image PRO module

			if ($option['type'] == 'checkbox' && isset($option_value['poip_image']) && $option_value['poip_image'] ) {
				?>
				<img src="<?php echo $option_value['poip_image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> 
				<?php
			}
			
      // >> Product Option Image PRO module
			?>
			
                    <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'image') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="radio">
                  <label>
                    <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />

			<?php
			// << Product Option Image PRO module

			if ($option['type'] == 'radio' && isset($option_value['poip_image']) && $option_value['poip_image'] ) {
				?>
				<img src="<?php echo $option_value['poip_image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> 
				<?php
			}
			
      // >> Product Option Image PRO module
			?>
			
                    <img src="<?php echo $option_value['image']; ?>" title="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'text') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'textarea') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control"><?php echo $option['value']; ?></textarea>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'file') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default btn-block"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
              <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" id="input-option<?php echo $option['product_option_id']; ?>" />
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'date') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group date">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'datetime') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group datetime">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'time') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group time">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php } ?>
            <?php } ?>
            <?php if ($recurrings) { ?>
				<h3><?php echo $text_payment_recurring ?></h3>
				<div class="form-group required">
				  <select name="recurring_id" class="form-control">
					<option value=""><?php echo $text_select; ?></option>
					<?php foreach ($recurrings as $recurring) { ?>
					<option value="<?php echo $recurring['recurring_id'] ?>"><?php echo $recurring['name'] ?></option>
					<?php } ?>
				  </select>
				  <div class="help-block" id="recurring-description"></div>
				</div>
				<?php } ?>
				<div class="form-group">
				  <!-- <label class="control-label" for="input-quantity"><?php //echo $entry_qty; ?></label> -->
					<div class="input-content"><div style="float: left;padding-top:5px;margin-right:7px;"><b>Quantity:</b></div>
					  <!-- <input type="button" id="minus" /> -->
						<div style="float: left">
					  <input type="text" name="quantity" value="<?php echo $minimum; ?>" size="2" id="input-quantity" class="form-control" />
						<script>
							$("input[name='quantity']").TouchSpin({
								min: 0,
								max: 50
							});
						</script>
						</div>
					  <!-- <input type="button" id="plus" /> -->
					  <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
					</div>
					<div class="row" style="clear:both;padding-top:5px;">
					<div>
				  <button style="margin-right:8px;margin-left:14px;" type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary btn-lg btn-block"><span class="sp-button" style="text-transform: uppercase;"><?php echo $button_cart; ?></span></button>
					</div>
					<div>
					<button style="width:180px" type="button" id="button-wishlist" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary btn-lg btn-block" onclick="wishlist.add('<?php echo $product_id; ?>');"><span class="sp-button" ><i class="fa fa-heart" aria-hidden="true"></i> <?php echo 'Add to Wishlist'; ?></span></button>
					</div>
						</div>
				</div>
				<?php if ($minimum > 1) { ?>
				<div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $text_minimum; ?></div>
				<?php } ?>
			  </div>
			  <?php if ($review_status) { ?>
			  <div class="rating">
				
				<!-- AddThis Button BEGIN -->
				<div class="addthis_toolbox addthis_default_style"><a class="addthis_button_facebook_like" fb:like:layout="button_count"></a> <a class="addthis_button_tweet"></a> <a class="addthis_button_pinterest_pinit"></a> <a class="addthis_counter addthis_pill_style"></a></div>
				<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-515eeaf54693130e"></script> 
				<!-- AddThis Button END --> 
			  </div>
			  <?php } ?>
			</div>
			</div>
		  </div>
		  <div class="col-md-3 col-sm-3 col-sms-12">
			<div class="view-banner">
				<?php echo $content_block5; ?>
			</div>
		  </div>
	  </div>
	  <div class="tab-view">
			<ul class="nav nav-tabs">
            <!--<li class="active"><a href="#tab-description" data-toggle="tab"><?php echo $tab_description; ?></a></li>-->
            <?php if ($attribute_groups) { ?>
            <li class="active"><a href="#tab-specification" data-toggle="tab"><?php echo $tab_attribute; ?></a></li>
            <?php } ?>
				<li><a href="#tab-shipping" data-toggle="tab"><?php echo 'Shipping and Delivery'; ?></a></li>
            <?php if ($review_status) { ?>
            <li><a href="#tab-review" data-toggle="tab"><?php echo $tab_review; ?></a></li>
            <?php } ?>
				
          </ul>
          <div class="tab-content">
            <!-- <div class="tab-pane active" id="tab-description"><?php echo $description; ?></div> -->
            <?php if ($attribute_groups) { ?>
            <div class="tab-pane active" id="tab-specification">
              <table class="table table-bordered">
                <?php foreach ($attribute_groups as $attribute_group) { ?>
                <thead>
                  <tr>
                    <td colspan="2"><strong><?php echo $attribute_group['name']; ?></strong></td>
                  </tr>
                </thead>
                <tbody>
                  <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                  <tr>
                    <td><?php echo $attribute['name']; ?></td>
                    <td><?php echo $attribute['text']; ?></td>
                  </tr>
                  <?php } ?>
                </tbody>
                <?php } ?>
              </table>
            </div>
            <?php } ?>
            <?php if ($review_status) { ?>
			  <div class="tab-pane" id="tab-review">
				  <form class="form-horizontal" id="form-review">
					  <div id="review"></div>
					  <h2><?php echo $text_write; ?></h2>
					  <?php if ($review_guest) { ?>
					  <div class="form-group required">
						  <div class="col-sm-12">
							  <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
							  <input type="text" name="name" value="<?php echo $customer_name; ?>" id="input-name" class="form-control" />
						  </div>
					  </div>
					  <div class="form-group required">
						  <div class="col-sm-12">
							  <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
							  <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
						  </div>
					  </div>
					  <div class="form-group required">
						  <div class="col-sm-12">
							  <label class="control-label"><?php echo $entry_rating; ?></label>
							  &nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
							  <input type="radio" name="rating" value="1" />
							  &nbsp;
							  <input type="radio" name="rating" value="2" />
							  &nbsp;
							  <input type="radio" name="rating" value="3" />
							  &nbsp;
							  <input type="radio" name="rating" value="4" />
							  &nbsp;
							  <input type="radio" name="rating" value="5" />
							  &nbsp;<?php echo $entry_good; ?></div>
					  </div>
					  <?php echo $captcha; ?>
					  <div class="buttons clearfix">
						  <div class="pull-right">
							  <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary"><?php echo $button_continue; ?></button>
						  </div>
					  </div>
					  <?php } else { ?>
					  <?php echo $text_login; ?>
					  <?php } ?>
				  </form>
			  </div>
            <?php } ?>

			  <div class="tab-pane" id="tab-shipping">
				  <header>
					  <h4>Shipping and Delivery</h4>
				  </header>
				  <div class="rte rte--indented-images">
					  <p>Kindly go through the followings:</p>
					  <p><b>Location and Estimated shipping Period</b></p>
					  <table class="table table-bordered"><tbody>
						  <tr><td><b>Location</b></td>
							  <td><b>*Estimated Shipping Period</b><br></td>
						  </tr>
						  <tr><td>United States<br></td>
							  <td>10-39 Business days<br></td>
						  </tr>
						  <tr><td>Canada, Europe<br></td>
							  <td>10-39 Business days<br></td>
						  </tr>
						  <tr><td>Australia, New Zealand<br></td>
							  <td>10-39 Business days<br></td>
						  </tr>
						  <tr><td>Mexico, Central America, South America<br></td>
							  <td>15-39 Business days<br></td>
						  </tr></tbody>
					  </table>
					  
					  <p>*This doesn't include our 3-5 days processing period.<br></p>
					  <p><b>How about customs?</b></p><p>We are not responsible for any additional customs fees. By purchasing our products, you consent that one or more packages may be shipped to you and may get customs fees when they arrive at your country.</p>
					  <p><b>Is tracking information available?</b></p>
					  <p>Yes, you will receive an email once your product is shipped and it contains tracking information.</p>
					  <p><b>My tracking says, "No information available"?</b></p>
					  <p>It may take 3-5 business days, to update your tracking information into the system.</p>
					  <p><b>How we ship your packages?</b></p>
					  <p>Packages come from our warehouse in China and will be shipped through ePacket or EMS, depends on size and weight of the order.</p>
					  <p><b>Will the package be single or multiple?</b></p>
					  <p>If there are multiple purchases, the product is more likely to be sent in multiple package and shipping.</p>
					  <p>If you have any other questions, please write to us at support@wowflashy.com.</p>
				  </div>

<br><br>
				  <header>
					  <h4>Refunds and Return Policy</h4>
				  </header>
				  <div class="rte rte--indented-images">
					  <p><b>Refund can be made for the following reasons:</b></p>
					  <p>1. If you have not received the product within 45 business days, including 3-5 days of processing, you can apply for a refund or a reshipment.</p>
					  <p>2. If you received a wrong or damaged product, you can apply for a refund or a reshipment.</p>
					  <p><b>Refund can not be made for the following reasons:</b></p>
					  <p>1. If the customer provides a wrong shipping address.</p>
					  <p>2. If the product is on hold with the customs.</p>
					  <p>3. Delay due to natural calamities.</p>
					  <p>Refund request can be submitted only after 45 business days has expired.</p>
					  <p>For return click here <a href="https://www.wowflashy.com/return">https://www.wowflashy.com/return</a> or send mail to support@wowflashy.com</p>
					  <p>If a refund is approved then it will take 14 business days to process and the amount will be automatically credited to your card.</p>
				  </div>
				  
			  </div>
			  
			  
          </div>
		</div>
      <?php if ($products) { ?>
	  
      <div class="related-title modunl-title"><h2><?php echo $text_related; ?></h2></div>
		<div class="row">
		<div class="view-related">
        <?php foreach ($products as $product) { ?>
        <div class="related-items">
			<div class="item">
				<div class="product-thumb transition item-inner">
					<div class="images-container">
						<div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" <?php /* Product Option Image PRO module << */ if (!isset($current_class)) $current_class = time(); ?> data-poip_id="image_<?php echo "".$current_class."_".$product['product_id']; ?>" <?php   /*  >> Product Option Image PRO module */ ?>alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>

      
      <?php // Product Option Image PRO module << ?>
			
      <?php  if ( !empty($poip_installed) && !empty($poip_theme_name)  && isset($product['option_images']) && $product['option_images']) {
			
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

					} elseif ($poip_theme_name == "pav_styleshop") { // for product_module.tpl
						// just skip
						
					
					
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
				}
				
      } ?>
      <?php //  >> Product Option Image PRO module ?>
      
						
					</div>
					<div class="des-container">
						<div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
						<?php if (isset($product['rating'])) { ?>
							<div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="review-star" title="review-star"  /></div>
						<?php } ?>
						<div class="price-box">
							<?php if ($product['price']) { ?>
							  <div class="price">
								<?php if (!$product['special']) { ?>
								<?php echo $product['price']; ?>
								<?php } else { ?>
								<span class="price-new"><?php echo $product['special']; ?></span> 
								<?php } ?>
								<?php if ($product['tax']) { ?>
								<span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
								<?php } ?>
							  </div>
							<?php } ?>
						</div>
						<div class="free-shipping">
							<img src="image/catalog/free_shipping.png" alt="wowflashy-free shipping" title="wowflashy-free shipping" />
						</div>
						<div class="item-content">
							<div class="actions">
								<div class="button-group">
									<div class="cart"><button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><span><?php echo $button_cart; ?></span></button></div>
								</div>
							</div>
						</div>
						<p class="description"><?php echo $product['description']; ?></p>
					</div>
				</div>
			</div>
		</div>
        <?php } ?>
      </div>
		</div>
      <?php } ?>
      <?php echo $content_bottom; ?></div></div>
    <?php echo $column_right; ?></div>
</div>
<script type="text/javascript"><!--
$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
	$.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
		dataType: 'json',
		beforeSend: function() {
			$('#recurring-description').html('');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			
			if (json['success']) {
				$('#recurring-description').html(json['success']);
			}
		}
	});
});
//--></script> 
<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-cart .sp-button').button('loading');
		},
		complete: function() {
			$('#button-cart .sp-button').button('reset');
			
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));
						
						if (element.parent().hasClass('input-group')) {
							element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						} else {
							element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						}
					}
				}
				
				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
				}
				
				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}
			
			if (json['success']) {
				$('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
				
				$('#cart-total').html(json['total']);
				
				$('html, body').animate({ scrollTop: 0 }, 'slow');
				
				$('#cart > .top-cart-contain  ul').load('index.php?route=common/cart/info ul li');
			}
		}
	});
});
//--></script> 
<script type="text/javascript"><!--

$('button[id^=\'button-upload\']').on('click', function() {
	var node = this;
	
	$('#form-upload').remove();
	
	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');
	
	$('#form-upload input[name=\'file\']').trigger('click');
	
	$('#form-upload input[name=\'file\']').on('change', function() {
		$.ajax({
			url: 'index.php?route=tool/upload',
			type: 'post',
			dataType: 'json',
			data: new FormData($(this).parent()[0]),
			cache: false,
			contentType: false,
			processData: false,
			beforeSend: function() {
				$(node).button('loading');
			},
			complete: function() {
				$(node).button('reset');
			},
			success: function(json) {
				$('.text-danger').remove();
				
				if (json['error']) {
					$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
				}
				
				if (json['success']) {
					alert(json['success']);
					
					$(node).parent().find('input').attr('value', json['code']);
				}
			},
			error: function(xhr, ajaxOptions, thrownError) {
				alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
			}
		});
	});
});
//--></script> 
<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
  e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
		beforeSend: function() {
			$('#button-review').button('loading');
		},
		complete: function() {
			$('#button-review').button('reset');
			$('#captcha').attr('src', 'index.php?route=tool/captcha#'+new Date().getTime());
			$('input[name=\'captcha\']').val('');
		},
		success: function(json) {
			$('.alert-success, .alert-danger').remove();
			
			if (json['error']) {
				$('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}
			
			if (json['success']) {
				$('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');
				
				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').prop('checked', false);
				$('input[name=\'captcha\']').val('');
			}
		}
	});
});

//--></script>

			<?php
				//<< Product Option Image PRO module
				if (isset($poip_theme_name) && ($poip_theme_name=='pav_fashion' || $poip_theme_name=='fashion' || $poip_theme_name=='pav_styleshop' || $poip_theme_name=='megashop'
				|| $poip_theme_name == 'lexus_shopping' || $poip_theme_name == 'pav_sportshop' ) ) { ?>
				<script type="text/javascript"><!--
					$('div.product-action').css('top', '-70px');
					$('a.pav-colorbox').css('top', 'auto');
					$('a.pav-colorbox').css('bottom', '-40px');
				--></script>
				<?php }
				// >> Product Option Image PRO module
				?>
      

      <!-- Product Option Image PRO module << -->
      <?php
				if ( !empty($poip_installed) ) {  
					
					if ( !empty($poip_inclide_file_name_default) ) {
						if (class_exists('VQMod')) {
							include( VQMod::modCheck( modification($poip_inclide_file_name_default) ) );
						} else {
							include( modification($poip_inclide_file_name_default) );
						}
					}
					if ( !empty($poip_inclide_file_name_custom) ) {
						if (class_exists('VQMod')) {
							include( VQMod::modCheck( modification($poip_inclide_file_name_custom) ) );
						} else {
							include( modification($poip_inclide_file_name_custom) );
						}
					} else { // no custom (owerwise it was created in custom file)
						?>
						<script  type = "text/javascript" ><!--
							if ( typeof(poip_product_default) != 'undefined' ) { 
								var poip_product = new poip_product_default();
							}
						//--></script>
						<?php
					}
					
				}
			?>
      <!-- >> Product Option Image PRO module -->
      
<?php echo $footer; ?>
