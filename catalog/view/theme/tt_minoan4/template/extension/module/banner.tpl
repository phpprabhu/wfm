<div class="banner-container">
		<div class="banner-title modunl-title"><h2><?php echo $heading_title; ?></h2></div>
		<div id="banner<?php echo $module; ?>" class="owl-carousel">
		  <?php foreach ($banners as $banner) { ?>
		  <div class="item-banner">
			<?php if ($banner['link']) { ?>
			<a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" title="<?php echo $banner['title']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" /></a>
			<?php } else { ?>
			<img src="<?php echo $banner['image']; ?>" title="<?php echo $banner['title']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
			<?php } ?>
		  </div>
		  <?php } ?>
		</div>
</div>
<script type="text/javascript"><!--
$('#banner<?php echo $module; ?>').owlCarousel({
	autoPlay: 10000,
	navigation: false,
	pagination: true,
	transitionStyle: 'fade',
	items :5,
	itemsDesktop : [1199,4], 
	itemsDesktopSmall : [992,3], 
	itemsTablet: [680,2], 
	itemsMobile : [480,1]
});
--></script>
