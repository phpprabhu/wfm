<?php echo $content_block3; ?>
<div class="footer-container">
	<div class="footer">
		<footer>
		  <div class="container">
			<div class="container-inner">
			<div class="row">
			  <div class="col-lg-4 col-md-4 col-sm-5 col-sms-12 col1">
				<div class="col">
					<div class="footer-logo"><a href="#"><img src="image/catalog/logo-wowflashy-greyscale.png" title="WOWFlashy - Love on Fashion Follow me - Grayscale Logo" alt="WOWFlashy - Love on Fashion Follow me - Grayscale Logo"></a></div>
					<div class="footer-description">
						<?php echo $text_description; ?>
					</div>
					<div class="payments">
						<h3><?php echo $title_payment ?></h3>
						<ul>
							<li class="first"><div class="paypal"></div></li>
							<li><div class="paypal1"></div></li>
							<li><div class="paypal2"></div></li>
							<li><div class="paypal3"></div></li>
							<li class="last"><div class="paypal4"></div></li>
						</ul>
					</div>
					<div class="payments">
						<h3>Shop with Trust</h3>
						<div style="width: 117px;float: left;padding-bottom: 9px;padding-right: 10px;"><a href="#" onclick="window.open('https://www.sitelock.com/verify.php?site=wowflashy.com','SiteLock','width=600,height=600,left=160,top=170');" ><img alt="WOWFlashy-SiteLock" title="WOWFlashy-SiteLock" src="//shield.sitelock.com/shield/wowflashy.com" /></a></div>
						<div style="width: 117px;float: left;padding-bottom: 9px;"><a href="https://www.mcafeesecure.com/verify?host=wowflashy.com" target="_blank" alt="McAfee Secure Verified WOWFlashy.com" title="McAfee Secure Verified WOWFlashy.com"><img class="img-responsive" alt="WOWFlashy - McAfee Secure" title="WOWFlashy - McAfee Secure" src="catalog/view/theme/tt_minoan4/image/mcafee-secure.png" width="107" height="61" /></a></div>						
					</div>
				</div>
			  </div>
			  <div class="col-lg-8 col-md-8 col-sm-7 col-sms-12">
				<div class="footer-newletter">
					<?php echo $content_block4; ?>
				</div>
				<div class="footer-link">
					<div class="row">
						<div class="col-md-4 col-sm-4 col-sms-12">
							<div class="col col2">
								<?php if ($informations) { ?>
								<div class="footer-title"><h3><?php echo $text_information; ?></h3></div>
								<div class="footer-content">
									<ul>
										<?php foreach ($informations as $information) { ?>
										<li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
										<?php } ?>
									</ul>
								</div>
								<?php } ?>
							</div>
						</div>
						<div class="col-md-4 col-sm-4 col-sms-12">
							<div class="col col3">
								<div class="footer-title"><h3><?php echo $text_account; ?></h3></div>
								<div class="footer-content">
									<ul class="list-unstyled">
									  <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
									  <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
									  <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>									  
									  <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-md-4 col-sm-4 col-sms-12">
							<div class="col col4">
								<div class="footer-title"><h3><?php echo $text_extra; ?></h3></div>
								<div class="footer-content">
									<ul class="list-unstyled">
										<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
										<li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
									</ul>
								</div>							
							</div>
						</div>
					</div>
				</div>
			  </div>
			</div>
			</div>
		  </div>
		</footer>
	</div>
	<div class="copyright">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm-6 col-sms-12">
					<div class="powered"><p><?php echo $powered; ?></p></div>
				</div>
				<div class="col-md-6 col-sm-6 col-sms-12">
				</div>
			</div>
		</div>
	</div>
</div>
<div id="back-top" class="hidden-phone" style="display: block;"> </div>

<script type="text/javascript">
	$(document).ready(function(){

	 // hide #back-top first
	 $("#back-top").hide();
	 
	 // fade in #back-top
	 $(function () {
	  $(window).scroll(function () {
	   if ($(this).scrollTop() > 100) {
		$('#back-top').fadeIn();
	   } else {
		$('#back-top').fadeOut();
	   }
	  });
	  // scroll body to 0px on click
	  $('#back-top').click(function () {
	   $('body,html').animate({
		scrollTop: 0
	   }, 800);
	   return false;
	  });
	 });

	});
</script>
<script type="text/javascript">
    (function(){
       var foxscript = document.createElement('script');
           foxscript.src = '//js.foxpush.com/wowflashycom.js?v='+Math.random();
           foxscript.type = 'text/javascript';
           foxscript.async = 'true';
       var fox_s = document.getElementsByTagName('script')[0];
       fox_s.parentNode.insertBefore(foxscript, fox_s);})();
</script>
</body></html>
