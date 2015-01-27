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
	  <h1><?php echo $heading_title; ?></h1><br />
	  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
		<h3><span><?php echo $text_your_details; ?></span></h3>
		<div class="content">
		  <table class="form">
			<tr>
			  <td><span class="required">*</span> <?php echo $entry_firstname; ?></td>
			  <td><input type="text" name="firstname" value="<?php echo $firstname; ?>" class="text"/>
				<?php if ($error_firstname) { ?>
				<span class="error"><?php echo $error_firstname; ?></span>
				<?php } ?></td>
			</tr>
			<tr>
			  <td><span class="required">*</span> <?php echo $entry_lastname; ?></td>
			  <td><input type="text" name="lastname" value="<?php echo $lastname; ?>" class="text"/>
				<?php if ($error_lastname) { ?>
				<span class="error"><?php echo $error_lastname; ?></span>
				<?php } ?></td>
			</tr>
			<tr>
			  <td><span class="required">*</span> <?php echo $entry_email; ?></td>
			  <td><input type="text" name="email" value="<?php echo $email; ?>" class="text"/>
				<?php if ($error_email) { ?>
				<span class="error"><?php echo $error_email; ?></span>
				<?php } ?></td>
			</tr>
			<tr>
			  <td><span class="required">*</span> <?php echo $entry_telephone; ?></td>
			  <td><input type="text" name="telephone" value="<?php echo $telephone; ?>" class="text"/>
				<?php if ($error_telephone) { ?>
				<span class="error"><?php echo $error_telephone; ?></span>
				<?php } ?></td>
			</tr>
			<tr>
			  <td><?php echo $entry_fax; ?></td>
			  <td><input type="text" name="fax" value="<?php echo $fax; ?>" class="text"/></td>
			</tr>
		  </table>
		</div>
		<div class="buttons">
		  <div class="left"><a href="<?php echo $back; ?>" class="button cont"><?php echo $button_back; ?></a></div>
		  <div class="right">
			<input type="submit" value="<?php echo $button_continue; ?>" class="button cont" />
		  </div>
		</div>
	  </form>
	</div>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>