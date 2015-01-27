<?php echo $header; ?>
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
	  <h1><?php echo $heading_title; ?></h1>
	  <p class="msg"><?php echo $text_description; ?></p><br />
	  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
		<h3><span><?php echo $text_order; ?></span></h3>
		<div class="inner-container clearfix">
		  <div class="left"><label><span class="required">*</span> <?php echo $entry_firstname; ?></label><br />
			<input type="text" name="firstname" value="<?php echo $firstname; ?>" class="text" />
			<br />
			<?php if ($error_firstname) { ?>
			<span class="error"><?php echo $error_firstname; ?></span>
			<?php } ?>
			<br />
			<label><span class="required">*</span> <?php echo $entry_lastname; ?></label><br />
			<input type="text" name="lastname" value="<?php echo $lastname; ?>" class="text" />
			<br />
			<?php if ($error_lastname) { ?>
			<span class="error"><?php echo $error_lastname; ?></span>
			<?php } ?>
			<br />
			<label><span class="required">*</span> <?php echo $entry_email; ?></label><br />
			<input type="text" name="email" value="<?php echo $email; ?>" class="text" />
			<br />
			<?php if ($error_email) { ?>
			<span class="error"><?php echo $error_email; ?></span>
			<?php } ?>
			<br />
			<label><span class="required">*</span> <?php echo $entry_telephone; ?></label><br />
			<input type="text" name="telephone" value="<?php echo $telephone; ?>" class="text" />
			<br />
			<?php if ($error_telephone) { ?>
			<span class="error"><?php echo $error_telephone; ?></span>
			<?php } ?>
			<br />
		  </div>
		  <div class="right"><label><span class="required">*</span> <?php echo $entry_order_id; ?></label><br />
			<input type="text" name="order_id" value="<?php echo $order_id; ?>" class="text" />
			<br />
			<?php if ($error_order_id) { ?>
			<span class="error"><?php echo $error_order_id; ?></span>
			<?php } ?>
			<br />
			<label><?php echo $entry_date_ordered; ?></label><br />
			<input type="text" name="date_ordered" value="<?php echo $date_ordered; ?>" class="text date" />
			<br />
		  </div>
		</div>
		<h3><span><?php echo $text_product; ?></span></h3>
		<div id="return-product">
		  <div class="inner-container clearfix">
			<div class="return-product">
			  <div class="return-name"><label><span class="required">*</span> <b><?php echo $entry_product; ?></b></label><br />
				<input type="text" name="product" value="<?php echo $product; ?>" class="text" />
				<br />
				<?php if ($error_product) { ?>
				<span class="error"><?php echo $error_product; ?></span>
				<?php } ?>
			  </div>
			  <div class="return-model"><label><span class="required">*</span> <b><?php echo $entry_model; ?></b></label><br />
				<input type="text" name="model" value="<?php echo $model; ?>" class="text"/>
				<br />
				<?php if ($error_model) { ?>
				<span class="error"><?php echo $error_model; ?></span>
				<?php } ?>
			  </div>
			  <div class="return-quantity"><label><b><?php echo $entry_quantity; ?></b></label><br />
				<input type="text" name="quantity" value="<?php echo $quantity; ?>" class="text"/>
			  </div>
			</div>
			<div class="return-detail">
			  <div class="return-reason"><label><span class="required">*</span> <b><?php echo $entry_reason; ?></b></label><br />
				<table>
				  <?php foreach ($return_reasons as $return_reason) { ?>
				  <?php if ($return_reason['return_reason_id'] == $return_reason_id) { ?>
				  <tr>
					<td width="1"><input type="radio" name="return_reason_id" value="<?php echo $return_reason['return_reason_id']; ?>" id="return-reason-id<?php echo $return_reason['return_reason_id']; ?>" checked="checked" /></td>
					<td><label for="return-reason-id<?php echo $return_reason['return_reason_id']; ?>"><?php echo $return_reason['name']; ?></label></td>
				  </tr>
				  <?php } else { ?>
				  <tr>
					<td width="1"><input type="radio" name="return_reason_id" value="<?php echo $return_reason['return_reason_id']; ?>" id="return-reason-id<?php echo $return_reason['return_reason_id']; ?>" /></td>
					<td><label for="return-reason-id<?php echo $return_reason['return_reason_id']; ?>"><?php echo $return_reason['name']; ?></label></td>
				  </tr>
				  <?php  } ?>
				  <?php  } ?>
				</table>
				<?php if ($error_reason) { ?>
				<span class="error"><?php echo $error_reason; ?></span>
				<?php } ?>
			  </div>
			  <div class="return-opened"><label><b><?php echo $entry_opened; ?></b></label><br />
				<?php if ($opened) { ?>
				<input type="radio" name="opened" value="1" id="opened" checked="checked" />
				<?php } else { ?>
				<input type="radio" name="opened" value="1" id="opened" />
				<?php } ?>
				<label for="opened"><?php echo $text_yes; ?></label>
				<?php if (!$opened) { ?>
				<input type="radio" name="opened" value="0" id="unopened" checked="checked" />
				<?php } else { ?>
				<input type="radio" name="opened" value="0" id="unopened" />
				<?php } ?>
				<label for="unopened"><?php echo $text_no; ?></label>
				<br />
				<br />
				<label><?php echo $entry_fault_detail; ?></label><br />
				<textarea name="comment" cols="150" rows="6"><?php echo $comment; ?></textarea>
			  </div>
			  <div class="return-captcha"><label><b><?php echo $entry_captcha; ?></b></label><br />
				<input type="text" name="captcha" value="<?php echo $captcha; ?>" class="text" />
				<br />
				<img src="index.php?route=account/return/captcha" alt="" />
				<?php if ($error_captcha) { ?>
				<span class="error"><?php echo $error_captcha; ?></span>
				<?php } ?>
			  </div>
			</div>
		  </div>
		</div>
		<br />
		<div class="buttons">
		  <div class="left"><a href="<?php echo $back; ?>" class="button cont"><?php echo $button_back; ?></a></div>
		  <div class="right">
			<input type="submit" value="<?php echo $button_continue; ?>" class="button cont" />
		  </div>
		</div>
	  </form>
	</div>
  <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
$(document).ready(function() {
	$('.date').datepicker({dateFormat: 'yy-mm-dd'});
});
//--></script> 
<?php echo $footer; ?>