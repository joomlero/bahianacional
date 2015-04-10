<div class="left">
  <h3><span><?php echo $text_your_details; ?></span></h3>
  <label><span class="required">*</span> <?php echo $entry_firstname; ?></label><br />
  <input type="text" name="firstname" value="<?php echo $firstname; ?>" class="text" />
  <br />
  <br />
  <label><span class="required">*</span> <?php echo $entry_lastname; ?></label><br />
  <input type="text" name="lastname" value="<?php echo $lastname; ?>" class="text" />
  <br />
  <br />
  <label><span class="required">*</span> <?php echo $entry_email; ?></label><br />
  <input type="text" name="email" value="<?php echo $email; ?>" class="text" />
  <br />
  <br />
  <label><span class="required">*</span> <?php echo $entry_telephone; ?></label><br />
  <input type="text" name="telephone" value="<?php echo $telephone; ?>" class="text" />
  <br />
  <br />
  <label><?php echo $entry_fax; ?></label><br />
  <input type="text" name="fax" value="<?php echo $fax; ?>" class="text" />
  <br />
  <br />
</div>
<div class="right">
  <h3><span><?php echo $text_your_address; ?></span></h3>
  <label><?php echo $entry_company; ?></label><br />
  <input type="text" name="company" value="<?php echo $company; ?>" class="text" />
  <br />
  <br />
  <div style="display: <?php echo (count($customer_groups) > 1 ? 'block' : 'none'); ?>;"><?php echo $entry_account; ?><br />
    <select name="customer_group_id" class="text">
      <?php foreach ($customer_groups as $customer_group) { ?>
      <?php if ($customer_group['customer_group_id'] == $customer_group_id) { ?>
      <option value="<?php echo $customer_group['customer_group_id']; ?>" selected="selected"><?php echo $customer_group['name']; ?></option>
      <?php } else { ?>
      <option value="<?php echo $customer_group['customer_group_id']; ?>"><?php echo $customer_group['name']; ?></option>
      <?php } ?>
      <?php } ?>
    </select>
    <br />
    <br />
  </div>
  <div id="tax-id-display"><span id="tax-id-required" class="required">*</span> <?php echo $entry_tax_id; ?><br />
      <input type="hidden" name="company_id" value="1" class="text" />
    <input type="text" name="tax_id" value="<?php echo $tax_id; ?>" class="text" />
    <br />
    <br />
  </div>
  <label><span class="required">*</span> <?php echo $entry_address_1; ?></label><br />
  <input type="text" name="address_1" value="<?php echo $address_1; ?>" class="text" />
  <br />
  <br />
  <label><?php echo $entry_address_2; ?></label><br />
  <input type="text" name="address_2" value="<?php echo $address_2; ?>" class="text" />
  <br />
  <br />
  <label><span class="required">*</span> <?php echo $entry_city; ?></label><br />
  <input type="text" name="city" value="<?php echo $city; ?>" class="text" />
  <br />
  <br />
  <label><span id="payment-postcode-required" class="required">*</span> <?php echo $entry_postcode; ?></label><br />
  <input type="text" name="postcode" value="<?php echo $postcode; ?>" class="text" />
  <br />
  <br />
  <label><span class="required">*</span> <?php echo $entry_country; ?></label><br />
  <select name="country_id" class="text" style="width: 340px; overflow:hidden;">
    <option value=""><?php echo $text_select; ?></option>
    <?php foreach ($countries as $country) { ?>
    <?php if ($country['country_id'] == $country_id) { ?>
    <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
    <?php } else { ?>
    <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
    <?php } ?>
    <?php } ?>
  </select>
  <br />
  <br />
  <label><span class="required">*</span> <?php echo $entry_zone; ?></label><br />
  <select name="zone_id" class="text" style="width: 340px; overflow:hidden;">
  </select>
  <br />
</div>
<?php if ($shipping_required) { ?>
<div style="clear: both; padding-top: 15px; border-top: 1px solid #DDDDDD;">
  <?php if ($shipping_address) { ?>
  <input type="checkbox" name="shipping_address" value="1" id="shipping" checked="checked" />
  <?php } else { ?>
  <input type="checkbox" name="shipping_address" value="1" id="shipping" />
  <?php } ?>
  <label for="shipping"><?php echo $entry_shipping; ?></label>
  <br />
</div>
<?php } ?>
<div class="buttons">
  <div style="float: right;"><input type="button" value="<?php echo $button_continue; ?>" id="button-guest" class="button cont" /></div>
</div>
<script type="text/javascript"><!--
$('#payment-address select[name=\'customer_group_id\']').live('change', function() {
	var customer_group = [];
	
<?php foreach ($customer_groups as $customer_group) { ?>
	customer_group[<?php echo $customer_group['customer_group_id']; ?>] = [];
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['company_id_display'] = '<?php echo $customer_group['company_id_display']; ?>';
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['company_id_required'] = '<?php echo $customer_group['company_id_required']; ?>';
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['tax_id_display'] = '<?php echo $customer_group['tax_id_display']; ?>';
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['tax_id_required'] = '<?php echo $customer_group['tax_id_required']; ?>';
<?php } ?>	

	if (customer_group[this.value]) {
		if (customer_group[this.value]['company_id_display'] == '1') {
			$('#company-id-display').show();
		} else {
			$('#company-id-display').hide();
		}
		
		if (customer_group[this.value]['company_id_required'] == '1') {
			$('#company-id-required').show();
		} else {
			$('#company-id-required').hide();
		}
		
		if (customer_group[this.value]['tax_id_display'] == '1') {
			$('#tax-id-display').show();
		} else {
			$('#tax-id-display').hide();
		}
		
		if (customer_group[this.value]['tax_id_required'] == '1') {
			$('#tax-id-required').show();
		} else {
			$('#tax-id-required').hide();
		}	
	}
});

$('#payment-address select[name=\'customer_group_id\']').trigger('change');
//--></script>  
<script type="text/javascript"><!--
$('#payment-address select[name=\'country_id\']').bind('change', function() {
	$.ajax({
		url: 'index.php?route=checkout/checkout/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('#payment-address select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/bonfire/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('.wait').remove();
		},			
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('#payment-postcode-required').show();
			} else {
				$('#payment-postcode-required').hide();
			}
			
			html = '<option value=""><?php echo $text_select; ?></option>';
			
			if (json['zone'] != '') {
				for (i = 0; i < json['zone'].length; i++) {
        			html += '<option value="' + json['zone'][i]['zone_id'] + '"';
	    			
					if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
	      				html += ' selected="selected"';
	    			}
	
	    			html += '>' + json['zone'][i]['name'] + '</option>';
				}
			} else {
				html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
			}
			
			$('#payment-address select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('#payment-address select[name=\'country_id\']').trigger('change');
//--></script>