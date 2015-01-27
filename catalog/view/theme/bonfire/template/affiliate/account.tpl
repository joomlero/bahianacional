<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
<?php echo $column_left; ?><?php echo $column_right; ?>
<div class="inner-container clearfix"><?php echo $content_top; ?>
	<!-- START of BREADCRUMBS -->
	<p id="breadcrumbs">
			<?php foreach ($breadcrumbs as $breadcrumb) { ?>
			<a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
			<?php } ?>
	</p>
	<!-- END of BREADCRUMBS -->
	<div class="account">
	  <h1><?php echo $heading_title; ?></h1><br /> <br />
	  <h3><span><?php echo $text_my_account; ?></span></h3>
	  <div class="content">
		<ul class="arrow-1">
		  <li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
		  <li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
		  <li><a href="<?php echo $payment; ?>"><?php echo $text_payment; ?></a></li>
		</ul>
	  </div>
	  <h3><span><?php echo $text_my_tracking; ?></span></h3>
	  <div class="content">
		<ul class="arrow-1">
		  <li><a href="<?php echo $tracking; ?>"><?php echo $text_tracking; ?></a></li>
		</ul>
	  </div>
	  <h3><span><?php echo $text_my_transactions; ?></span></h3>
	  <div class="content">
		<ul class="arrow-1">
		  <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
		</ul>
	  </div>
	</div>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>