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
	  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
		<p><?php echo $text_email; ?></p>
		<h2><?php echo $text_your_email; ?></h2>
		<div class="content">
		  <table class="form">
			<tr>
			  <td><?php echo $entry_email; ?></td>
			  <td><input type="text" name="email" value="" /></td>
			</tr>
		  </table>
		</div>
		<div class="buttons">
		  <div class="left"><a href="<?php echo $back; ?>" class="button"><?php echo $button_back; ?></a></div>
		  <div class="right">
			<input type="submit" value="<?php echo $button_continue; ?>" class="button" />
		  </div>
		</div>
	  </form>
	</div>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>