<?php echo $header; ?><?php //echo $column_left; ?><?php //echo $column_right; ?>
<div class="inner-container clearfix" style="min-height: 200px;"><?php //echo $content_top; ?>
	<!-- START of BREADCRUMBS -->
	<p id="breadcrumbs">
			<?php foreach ($breadcrumbs as $breadcrumb) { ?>
			<a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
			<?php } ?>
	</p>
	<!-- END of BREADCRUMBS -->
	<div class="page-single">
	  <h3><span><?php echo $heading_title; ?></span></h3>
	  <?php echo $description; ?>
	  <div class="buttons">
		<div class="right"><a href="<?php echo $continue; ?>" class="button cont"><?php echo $button_continue; ?></a></div>
	  </div>
	</div>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>