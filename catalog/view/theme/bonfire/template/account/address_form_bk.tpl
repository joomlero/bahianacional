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
		<h3><span><?php echo $text_edit_address; ?></span></h3>
		<div class="content">
		  <table class="form">
			<tr>
			  <td><label><span class="required">*</span> <?php echo $entry_firstname; ?></label></td>
			  <td><input type="text" name="firstname" value="<?php echo $firstname; ?>" class="text"/>
				<?php if ($error_firstname) { ?>
				<span class="error"><?php echo $error_firstname; ?></span>
				<?php } ?></td>
			</tr>
			<tr>
			  <td><label><span class="required">*</span> <?php echo $entry_lastname; ?></label></td>
			  <td><input type="text" name="lastname" value="<?php echo $lastname; ?>" class="text"/>
				<?php if ($error_lastname) { ?>
				<span class="error"><?php echo $error_lastname; ?></span>
				<?php } ?></td>
			</tr>
			<tr>
			  <td><label><?php echo $entry_company; ?></label></td>
			  <td><input type="text" name="company" value="<?php echo $company; ?>" class="text"/></td>
			</tr>
			<tr style="display: <?php echo ($company_id_display ? 'table-row' : 'none'); ?>;">
			  <td><?php echo $entry_company_id; ?></td>
			  <td><input type="text" name="company_id" value="<?php echo $company_id; ?>" />
				<?php if ($error_company_id) { ?>
				<span class="error"><?php echo $error_company_id; ?></span>
				<?php } ?></td>
			</tr>
			<tr style="display: <?php echo ($tax_id_display ? 'table-row' : 'none'); ?>;">
			  <td><?php echo $entry_tax_id; ?></td>
			  <td><input type="text" name="tax_id" value="<?php echo $tax_id; ?>" />
				<?php if ($error_tax_id) { ?>
				<span class="error"><?php echo $error_tax_id; ?></span>
				<?php } ?></td>
			</tr>
			<tr>
			  <td><label><span class="required">*</span> <?php echo $entry_address_1; ?></label></td>
			  <td><input type="text" name="address_1" value="<?php echo $address_1; ?>" class="text"/>
				<?php if ($error_address_1) { ?>
				<span class="error"><?php echo $error_address_1; ?></span>
				<?php } ?></td>
			</tr>
			<tr>
			  <td><label><?php echo $entry_address_2; ?></label></td>
			  <td><input type="text" name="address_2" value="<?php echo $address_2; ?>" class="text"/></td>
			</tr>
			<tr>
			  <td><label><span class="required">*</span> <?php echo $entry_city; ?></label></td>
			  <td><input type="text" name="city" value="<?php echo $city; ?>" class="text"/>
				<?php if ($error_city) { ?>
				<span class="error"><?php echo $error_city; ?></span>
				<?php } ?></td>
			</tr>
			<tr>
			  <td><label><span class="required">*</span> <?php echo $entry_postcode; ?></label></td>
			  <td><input type="text" name="postcode" value="<?php echo $postcode; ?>" class="text"/>
				<?php if ($error_postcode) { ?>
				<span class="error"><?php echo $error_postcode; ?></span>
				<?php } ?></td>
			</tr>
			<tr>
			  <td><label><span class="required">*</span> <?php echo $entry_country; ?></label></td>
			  <td><select name="country_id" onchange="$('select[name=\'zone_id\']').load('index.php?route=account/address/zone&country_id=' + this.value + '&zone_id=<?php echo $zone_id; ?>');">
				  <option value=""><?php echo $text_select; ?></option>
				  <?php foreach ($countries as $country) { ?>
				  <?php if ($country['country_id'] == $country_id) { ?>
				  <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
				  <?php } else { ?>
				  <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
				  <?php } ?>
				  <?php } ?>
				</select>
				<?php if ($error_country) { ?>
				<span class="error"><?php echo $error_country; ?></span>
				<?php } ?></td>
			</tr>
			<tr>
			  <td><label><span class="required">*</span> <?php echo $entry_zone; ?></td>
			  <td><select name="zone_id">
				</select>
				<?php if ($error_zone) { ?>
				<span class="error"><?php echo $error_zone; ?></span>
				<?php } ?></td>
			</tr>
			<tr>
			  <td><label><?php echo $entry_default; ?></label></td>
			  <td><?php if ($default) { ?>
				<input type="radio" name="default" value="1" checked="checked" />
				<?php echo $text_yes; ?>
				<input type="radio" name="default" value="0" />
				<?php echo $text_no; ?>
				<?php } else { ?>
				<input type="radio" name="default" value="1" />
				<?php echo $text_yes; ?>
				<input type="radio" name="default" value="0" checked="checked" />
				<?php echo $text_no; ?>
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
<script type="text/javascript"><!--
$('select[name=\'zone_id\']').load('index.php?route=account/address/zone&country_id=<?php echo $country_id; ?>&zone_id=<?php echo $zone_id; ?>');
//--></script> 
<?php echo $footer; ?>