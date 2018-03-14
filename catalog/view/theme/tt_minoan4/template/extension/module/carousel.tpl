<div class="brand-slider-contain">
	<div class="container">
		<div class="brand-title">
			<h2><?php echo $title_brand; ?></h2>
		</div>
		<div id="carousel<?php echo $module; ?>" class="owl-carousel">
		  <?php foreach ($banners as $banner) { ?>
		  <div class="text-center">
			<?php if ($banner['link']) { ?>
			<a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" /></a>
			<?php } else { ?>
			<img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
			<?php } ?>
		  </div>
		  <?php } ?>
		</div>
	</div>
</div>
<script type="text/javascript"><!--
$('#carousel<?php echo $module; ?>').owlCarousel({
	autoPlay: 300000, //Set AutoPlay to 3 seconds
	slideSpeed :1000,
	navigation : true,
	paginationNumbers : true,
	pagination : false,
	stopOnHover : false,
	items :5, //10 items above 1000px browser width
	itemsDesktop : [1199,4], //5 items between 1000px and 901px
	itemsDesktopSmall : [991,3], // betweem 900px and 601px
	itemsTablet: [600,3], //2 items between 600 and 0
	itemsMobile : [480,2] // itemsMobile disabled - inherit from itemsTablet option
});
--></script>