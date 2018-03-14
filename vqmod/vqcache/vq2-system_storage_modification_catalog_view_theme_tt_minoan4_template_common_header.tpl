<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="sitelock-site-verification" content="8680" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
	<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/jquery-ui.js" type="text/javascript"></script> 
<link href="catalog/view/javascript/jquery/css/jquery-ui.css" rel="stylesheet" media="screen" />
<link href="catalog/view/theme/default/stylesheet/opentheme/oclayerednavigation/css/oclayerednavigation.css" 
rel="stylesheet"> 
<script src="catalog/view/javascript/opentheme/oclayerednavigation/oclayerednavigation.js" 
type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/tt_minoan4/stylesheet/bootstrap-touchspin.css" rel="stylesheet" type="text/css" />
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css' />
<link href="catalog/view/theme/tt_minoan4/stylesheet/stylesheet.css" rel="stylesheet">
<link href="catalog/view/theme/tt_minoan4/stylesheet/opentheme/hozmegamenu/css/custommenu.css" rel="stylesheet">
<script src="catalog/view/javascript/opentheme/hozmegamenu/custommenu.js" type="text/javascript"></script>
<script src="catalog/view/javascript/opentheme/hozmegamenu/mobile_menu.js" type="text/javascript"></script>
<link href="catalog/view/theme/tt_minoan4/stylesheet/opentheme/css/owl.carousel.css" rel="stylesheet">
<script src="catalog/view/javascript/opentheme/owlcarousel/owl.carousel.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/elevatezoom/jquery.elevatezoom.js" type="text/javascript"></script>
<script src="catalog/view/javascript/opentheme/ocslideshow/jquery.nivo.slider.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/jquery.bootstrap-touchspin.js" type="text/javascript"></script>
<link href="catalog/view/theme/tt_minoan4/stylesheet/animate.css" rel="stylesheet" type="text/css">
<link href="catalog/view/theme/tt_minoan4/stylesheet/opentheme/ocslideshow/ocslideshow.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="catalog/view/theme/tt_minoan4/stylesheet/opentheme/ocquickview/css/ocquickview.css">
<script src="catalog/view/javascript/opentheme/ocquickview/ocquickview.js" type="text/javascript"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp"></script>
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
	


<script src="catalog/view/javascript/jquery/lazyload/jquery.lazyload.js" type="text/javascript"></script>
            

			
			<?php // << Product Option Image PRO ?>
			
			<?php if ( !empty($poip_installed) ) { ?>
				<script  type = "text/javascript" ><!--
					function poip_show_thumb(elem) {
						
						if ($(elem).attr('data-thumb') && $(elem).attr('data-image_id')) {
										
							var main_img = $('img[data-poip_id="image_'+$(elem).attr('data-image_id')+'"]');
							if (main_img.length == 0) {
								main_img = $('img[data-poip_id="'+$(elem).attr('data-image_id')+'"]');
							}
							
							var prev_img = main_img.attr('src'); // journal2 compatibility
							main_img.attr('src', $(elem).attr('data-thumb'));
							main_img.closest('a').attr('href', $(elem).attr('href'));
							
							// moment theme compatibility (second image)
							if ( main_img.parent().parent().is('div.product-thumb__primary') ) {
								main_img.parent().parent().siblings('div.product-thumb__secondary').find('a').attr('href', $(elem).attr('href'));
							}
							
							// journal2 compatibility
							if (main_img.parent().hasClass('has-second-image')) {
								main_img.parent().attr('style', main_img.parent().attr('style').replace(prev_img, $(elem).attr('data-thumb')) );
							}
							
						}
					}
				//--></script>
			<?php } ?>
					
			<?php
			
				if ( !empty($poip_installed) ) {
					if ( !empty($poip_inclide_file_name_custom) ) {
					
						// for poip_list (for common/header script) default should be loaded only if custom exists
						if ( !empty($poip_inclide_file_name_default) ) {
							if (class_exists('VQMod')) {
								include( VQMod::modCheck( modification($poip_inclide_file_name_default) ) );
							} else {
								include( modification($poip_inclide_file_name_default) );
							}
						}
					
						if (class_exists('VQMod')) {
							include( VQMod::modCheck( modification($poip_inclide_file_name_custom) ) );
						} else {
							include( modification($poip_inclide_file_name_custom) );
						}
						
					}
					
					if (isset($poip_theme_name) && $poip_theme_name=='cosyone') {
						set_include_path(get_include_path() . PATH_SEPARATOR . DIR_APPLICATION.'/view/theme/cosyone/template/common');
					}
				}
			?>
			<?php // >> Product Option Image PRO ?>
			
</head>
<body class="<?php echo $class; ?>">
<header>
<div id="top">
  <div class="container">
	<div class="container-inner">
    <div class="row">
		<div class="col-md-9 col-sm-12 col-sms-12">
			<div class="header-box1">
				<div class="header-email">
					<h2><?php echo $text_email; ?>: <span><a href="mailto:<?php echo $email; ?>"><?php echo $email; ?></a></span></h2>
				</div>
			</div>
			<div class="header-box1">
				<div class="header-email">
					<h2><a href="<?php echo $contact; ?>"><?php echo 'Contact Us'; ?></a></h2>
				</div>
			</div>
			<div class="header-box2">
				<div class="currency-language">
					<div class="header-currency"><?php echo $currency; ?></div>
					<div class="header-laguage"><?php echo $language; ?></div>
				</div>
				<div id="top-links" class="nav pull-right">
					<div class="box-link">
						<label>
							<a class="account" href="javascript:;"><?php echo $text_account; ?><i class="fa fa-caret-down"></i></a>
						</label>
						<ul class="list-inline links">
							<?php if (!$logged) { ?>
							<li class="dropdown"><a class="account" href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
							<?php } ?>
						  <li class="dropdown"><a class="account" href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
						  <li><a class="wishlist" href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"> <span><?php echo $text_wishlist; ?></span></a></li>
						  <li><a class="shopping_cart" href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"> <span><?php echo $text_shopping_cart; ?></span></a></li>
						  <li><a class="checkout" href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><span><?php echo $text_checkout; ?></span></a></li>
							<?php if ($logged) { ?>
							<li><a class="checkout" href="<?php echo $logout; ?>" title="<?php echo $text_logout; ?>"><span><?php echo $text_logout; ?></span></a></li>
							<?php } ?>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-3 col-sm-12 col-sms-12">
			<?php echo $content_block; ?>
			<div class="text-welcome"><p><?php //echo $text_msg; ?></p></div>
		</div>
    </div>
	</div>
  </div>
</div>
<div class="header">
	<div class="container">
		<div class="row">
			<div class="col-md-3 col-sm-12 col-sms-12 header-left inc-width-40percent">
				<div id="logo">
					<?php if ($logo) { ?>
					  <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
					  <?php } else { ?>
					  <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
					  <?php } ?>
				</div>
			</div>
			<div class="col-md-9 col-sm-12 col-sms-12 header-right inc-width-60percent">
				<div class="search-cart">
					<div class="box-top">
						<div class="top-cart"><?php echo $cart; ?></div>
					</div>
					<div class="header-search"><?php echo $search; ?></div>
				</div>
				
			</div>
		</div>
		<div class="row">
			<?php echo $content_block1; ?>
		</div>
	</div>
</div>
</header>
