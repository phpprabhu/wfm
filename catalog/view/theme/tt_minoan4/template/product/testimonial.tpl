<?php echo $header; ?>
<div class="container">
<div class="content-top">
	<h2><?php echo $heading_title; ?></h2>
	<ul class="breadcrumb">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
		<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
		<?php } ?>
	</ul>
</div>
</div>
<div class="container">
<div class="main">
    <div id="content">
    <?php echo $content_top; ?>
        <div class="testimonial-product">
            <?php if ($testimonials) { ?>
            <div class="testimonial-container">
                <?php foreach ($testimonials as $testimonial) { ?>
				<div class="row-testimonials">
					<div class="testimonial-images"><img src="<?php echo $testimonial['image']; ?>" alt="<?php echo $testimonial['customer_name']; ?>" title="<?php echo $testimonial['customer_name']; ?>"></div>
					<div class="box-testimonial">
						<div class="testimonial-std"><?php echo $testimonial['content']; ?></div>
						<div class="testimonial-name"><h2>--<?php echo $testimonial['customer_name']; ?>--</h2></div>
					</div>
				</div>
                <?php }?>
            </div>
            <div class="show-page"><?php echo $pagination; ?><?php echo $results; ?></div>
            <?php } else { ?>
            <div class="content"><?php echo $text_no_testimonials; ?> <?php echo $pagination; ?></div>
            <?php } ?>
        </div>
    </div>
</div>
    <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>
