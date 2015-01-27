<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
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
	  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
		<h3></span><?php echo $text_password; ?></span></h3>
		<div class="content">
		  <table class="form">
			<tr>
			  <td><span class="required">*</span> <?php echo $entry_password; ?></td>
			  <td><input type="password" name="password" value="<?php echo $password; ?>" class="text"/>
				<?php if ($error_password) { ?>
				<span class="error"><?php echo $error_password; ?></span>
				<?php } ?></td>
			</tr>
			<tr>
			  <td><span class="required">*</span> <?php echo $entry_confirm; ?></td>
			  <td><input type="password" name="confirm" value="<?php echo $confirm; ?>" class="text"/>
				<?php if ($error_confirm) { ?>
				<span class="error"><?php echo $error_confirm; ?></span>
				<?php } ?></td>
			</tr>
		  </table>
		</div>
		<div class="buttons">
		  <div class="left"><a href="<?php echo $back; ?>" class="button cont"><?php echo $button_back; ?></a></div>
		  <div class="right"><input type="submit" value="<?php echo $button_continue; ?>" class="button cont" /></div>
		</div>
	  </form>
	</div>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>