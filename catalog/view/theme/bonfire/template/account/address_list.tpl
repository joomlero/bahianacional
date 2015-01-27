<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
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
	  <h1><?php echo $heading_title; ?></h1><br />
	  <p class="msg"><?php echo $text_address_book; ?></p>
	  <?php foreach ($addresses as $result) { ?>
	  <div class="content">
		<table class="table_style" style="width: 100%;">
		  <tr>
			<td><?php echo $result['address']; ?></td>
			<td style="text-align: right;"><a href="<?php echo $result['update']; ?>" class="button"><?php echo $button_edit; ?></a> &nbsp; <a href="<?php echo $result['delete']; ?>" class="button"><?php echo $button_delete; ?></a></td>
		  </tr>
		</table>
	  </div>
	  <?php } ?>
	  <div class="buttons">
		<div class="left"><a href="<?php echo $back; ?>" class="button cont"><?php echo $button_back; ?></a></div>
		<div class="right"><a href="<?php echo $insert; ?>" class="button cont"><?php echo $button_new_address; ?></a></div>
	  </div>
	</div>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>