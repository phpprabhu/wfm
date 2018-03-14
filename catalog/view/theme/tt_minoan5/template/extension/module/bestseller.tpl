<div class="col-md-4 col-sm-4 col-sms-12">
	<div class="bestseller-container home-container">
		<div class="bestseller-title home-title"><h2><?php echo $heading_title; ?></h2></div>
		<?php foreach ($products as $product) { ?>
		<div class="product-layout">
			<div class="product-thumb transition item-home">
			  <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
			  <div class="home-content">
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
		 <?php } ?>
	</div>
</div>