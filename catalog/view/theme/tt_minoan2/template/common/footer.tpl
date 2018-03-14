<?php echo $content_block3; ?>
<div class="footer-container">
	<div class="footer">
		<footer>
		  <div class="container">
			<div class="container-inner">
			<div class="row">
			  <div class="col-lg-4 col-md-4 col-sm-5 col-sms-12 col1">
				<div class="col">
					<div class="footer-logo"><a href="#"><img src="catalog/view/theme/tt_minoan1/image/logo_footer.png" alt=""></a></div>
					<div class="footer-description">
						<?php echo $text_description; ?>
					</div>
					<div class="payments">
						<h3><?php echo $title_payment ?></h3>
						<ul>
							<li class="first"><a href="#"><img src="catalog/view/theme/tt_minoan1/image/paypal.png" alt=""></a></li>
							<li><a href="#"><img src="catalog/view/theme/tt_minoan1/image/paypal1.png" alt=""></a></li>
							<li><a href="#"><img src="catalog/view/theme/tt_minoan1/image/paypal2.png" alt=""></a></li>
							<li><a href="#"><img src="catalog/view/theme/tt_minoan1/image/paypal3.png" alt=""></a></li>
							<li class="last"><a href="#"><img src="catalog/view/theme/tt_minoan1/image/paypal4.png" alt=""></a></li>
						</ul>
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
								<div class="footer-title"><h3><?php echo $text_extra; ?></h3></div>
								<div class="footer-content">
									<ul class="list-unstyled">
									  <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
									  <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
									  <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
									  <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
									  <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
									</ul>
								</div>
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
									  <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
									  <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-md-4 col-sm-4 col-sms-12">
							<div class="col col4">
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
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->
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
</body></html>