<?php echo $header; ?>
<div class="banner-home">
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-sm-8 col-sms-12"><?php echo $content_block5; ?></div>
			<div class="col-md-4 col-sm-4 col-sms-12"><?php echo $content_block6; ?></div>
		</div>
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
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?><?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<div class="container">
	<div class="row">
		<?php echo $content_block2; ?>
	</div>
</div>
<?php echo $footer; ?>