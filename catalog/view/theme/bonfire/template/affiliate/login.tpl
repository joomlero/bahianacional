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
	  <div class="login-content">
		<div class="new-customer">
				<h3><span><?php echo $heading_title; ?></span></h3>
				<p class="msg"><?php echo $text_description; ?></p><br />
				<h3><span><?php echo $text_new_affiliate; ?></span></h3>
				<p class="msg"><?php echo $text_register_account; ?></p>
				<a href="<?php echo $register; ?>" class="cont"><?php echo $button_continue; ?></a>
				<br /><br />
		</div>

		<div class="login">
			<h3><span><?php echo $text_returning_affiliate; ?></span></h3>
			<p><?php echo $text_i_am_returning_affiliate; ?></p>
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
	</div>
	<!-- END of LOGIN-FORM -->
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>