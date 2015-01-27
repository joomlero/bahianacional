<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<div class="inner-container clearfix"><?php echo $content_top; ?>
	<!-- START of BREADCRUMBS -->
            <div id="breadcrumbs">
            		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
					<a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
					<?php } ?>
            </div>
	<!-- END of BREADCRUMBS -->
	
	<div class="container account-login">
	<!-- START of LOGIN-FORM -->
	<div class="clearfix">
		<div class="new-customer">
				<h3><span><?php echo $text_new_customer; ?></span></h3>
				<p><a href="<?php echo $register; ?>" class="reg"><?php echo $text_register; ?></a></p>
				<p class="msg"><?php echo $text_register_account; ?></p>
				<a href="<?php echo $register; ?>" class="cont"><?php echo $button_continue; ?></a>
		</div>
		<div class="login">
			<h3><span><?php echo $text_returning_customer; ?></span></h3>
			<p><?php echo $text_i_am_returning_customer; ?></p>
			<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
					<fieldset>
							<input type="text" name="email" value="<?php echo $email; ?>" />
							<input type="password" name="password" value="<?php echo $password; ?>" />
							<p><a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a></p>
							<input class="login-btn" type="submit" value="<?php echo $button_login; ?>" />
							<?php if ($redirect) { ?>
							<input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
							<?php } ?>
					</fieldset>
			</form>
		</div>
	</div>
	<!-- END of LOGIN-FORM -->
	</div>
  <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
$('#login input').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#login').submit();
	}
});
//--></script> 
<?php echo $footer; ?>