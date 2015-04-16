<?php echo $header; ?>
<?php if ($attention) { ?>
<div class="attention"><?php echo $attention; ?><img src="catalog/view/theme/bonfire/image/close.png" alt="" class="close" /></div>
<?php } ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?><img src="catalog/view/theme/bonfire/image/close.png" alt="" class="close" /></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?><img src="catalog/view/theme/bonfire/image/close.png" alt="" class="close" /></div>
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
	<div class="cart">
	  <h3><span><?php echo $heading_title; ?>
		<?php if ($weight) { ?>
		&nbsp;<?php //echo $weight; ?>
		<?php } ?></span>
	  </h3><br />
	  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
		  <table>
			<thead>
			  <tr>
				<th class="image"><?php echo $column_image; ?></td>
				<th class="name"><?php echo $column_name; ?></td>
				<th class="model"><?php echo $column_model; ?></td>
				<th class="quantity"><?php echo $column_quantity; ?></td>
				<th class="price"><?php echo $column_price; ?></td>
				<th class="total"><?php echo $column_total; ?></td>
			  </tr>
			</thead>
			<tbody>
			  <?php foreach ($products as $product) { ?>
			  <tr>
				<td class="image"><?php if ($product['thumb']) { ?>
				  <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
				  <?php } ?></td>
				<td class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
				  <?php if (!$product['stock']) { ?>
				  <span class="stock">***</span>
				  <?php } ?>
				  <div>
					<?php foreach ($product['option'] as $option) { ?>
					- <small><?php echo $option['name']; ?>: <?php echo $option['value']; ?></small><br />
					<?php } ?>
				  </div>
				  <?php if ($product['reward']) { ?>
				  <small><?php echo $product['reward']; ?></small>
				  <?php } ?></td>
				<td class="model"><?php echo $product['model']; ?></td>
				<td class="qty"><input class="text" type="text" name="quantity[<?php echo $product['key']; ?>]" value="<?php echo $product['quantity']; ?>" size="1" />
				  &nbsp;
				  <input type="image" src="catalog/view/theme/bonfire/image/update.png" alt="<?php echo $button_update; ?>" title="<?php echo $button_update; ?>" />
				  &nbsp;<a href="<?php echo $product['remove']; ?>"><img src="catalog/view/theme/bonfire/image/remove.png" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" /></a></td>
				<td class="price"><?php echo $product['price']; ?></td>
				<td class="total"><?php echo $product['total']; ?></td>
			  </tr>
			  <?php } ?>
			  <?php foreach ($vouchers as $vouchers) { ?>
			  <tr>
				<td class="image"></td>
				<td class="name"><?php echo $vouchers['description']; ?></td>
				<td class="model"></td>
				<td class="quantity"><input type="text" name="" value="1" size="1" disabled="disabled" />
				  &nbsp;<a href="<?php echo $vouchers['remove']; ?>"><img src="catalog/view/theme/bonfire/image/remove.png" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" /></a></td>
				<td class="price"><?php echo $vouchers['amount']; ?></td>
				<td class="total"><?php echo $vouchers['amount']; ?></td>
			  </tr>
			  <?php } ?>
			</tbody>
		  </table>
	  </form>
	  <div class="left-column">
	  <?php 
          /*
          if ($coupon_status || $voucher_status || $reward_status || $shipping_status) { ?>
	  <h3><span><?php echo $text_next; ?></span></h3>
		<div class="accordion">
			<?php if ($coupon_status) { ?>					
			<div class="tab">
				<h4><?php echo $text_use_coupon; ?></h4>
			</div>
			<div class="pane">
					<p><form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
					<label><?php echo $entry_coupon; ?>&nbsp;</label><br />
					<input type="text" name="coupon" value="<?php echo $coupon; ?>" class="text" />
					<input type="hidden" name="next" value="coupon" />
					&nbsp;
					<input type="submit" value="<?php echo $button_coupon; ?>" class="button cont" />
				  </form></p>
			</div>
			<?php } ?>
			<?php if ($voucher_status) { ?>
			<div class="tab">
				<h4><?php echo $text_use_voucher; ?></h4>
			</div>
			<div class="pane">
					<p><form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
					<label><?php echo $entry_voucher; ?>&nbsp;</label><br />
					<input type="text" name="voucher" value="<?php echo $voucher; ?>" class="text" />
					<input type="hidden" name="next" value="voucher" />
					&nbsp;
					<input type="submit" value="<?php echo $button_voucher; ?>" class="button cont" />
				  </form></p>
			</div>
			<?php } ?>
			<?php if ($reward_status) { ?>
			<div class="tab">
				<h4><?php echo $text_use_reward; ?></h4>
			</div>
			<div class="pane">
					<p><form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
					<label><?php echo $entry_reward; ?>&nbsp;</label><br />
					<input type="text" name="reward" value="<?php echo $reward; ?>" class="text"/>
					<input type="hidden" name="next" value="reward" />
					&nbsp;
					<input type="submit" value="<?php echo $button_reward; ?>" class="button cont" />
				  </form></p>
			</div>
			<?php } ?>
			<?php if ($shipping_status) { ?>
			<div class="tab">
				<h4><?php echo $text_shipping_estimate; ?></h4>
			</div>
			<div class="pane">
					<p><label><?php echo $text_shipping_detail; ?></label><br />
					<label><span class="required">*</span> <?php echo $entry_country; ?></label><br />
					<select name="country_id">
							  <option value=""><?php echo $text_select; ?></option>
							  <?php foreach ($countries as $country) { ?>
							  <?php if ($country['country_id'] == $country_id) { ?>
							  <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
							  <?php } else { ?>
							  <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
							  <?php } ?>
							  <?php } ?>
							</select><br />
					<label><span class="required">*</span> <?php echo $entry_zone; ?></label> <br />
					<select name="zone_id">
							</select><br />
					<label><span id="postcode-required" class="required">*</span> <?php echo $entry_postcode; ?></label><br />
					<input type="text" name="postcode" value="<?php echo $postcode; ?>" class="text" /><br />
					<input type="button" value="<?php echo $button_quote; ?>" id="button-quote" class="button cont" />
					</p>
			</div>
			<?php } ?>
		</div>
	  <?php //} */
          ?>
	  </div>
	  <div class="right-column">
		<?php foreach ($totals as $total) { ?>
			<?php if($total['code'] != 'total') { ?>
				<p><?php echo $total['title']; ?>: <?php echo $total['text']; ?></p>
			<?php } elseif($total['code'] == 'total') { ?>
				<p class="total"><?php echo $total['title']; ?>: <?php echo $total['text']; ?></p>
			<?php } ?>
		<?php } ?><br />
		<p>
			<a href="<?php echo $checkout; ?>" class="button cont"><?php echo $button_checkout; ?></a>
		</p>
		<br />
                <p><img src="catalog/view/theme/bonfire/image/paypal_seguro.png"/></p>
                <p><a href="<?php echo $continue; ?>"><?php echo $button_shopping; ?> &rarr;</a></p>
	  </div>
	</div>
  <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
$('input[name=\'next\']').bind('change', function() {
	$('.cart-module > div').hide();
	
	$('#' + this.value).show();
});
//--></script>
<?php if ($shipping_status) { ?>
<script type="text/javascript"><!--
$('#button-quote').live('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/quote',
		type: 'post',
		data: 'country_id=' + $('select[name=\'country_id\']').val() + '&zone_id=' + $('select[name=\'zone_id\']').val() + '&postcode=' + encodeURIComponent($('input[name=\'postcode\']').val()),
		dataType: 'json',		
		beforeSend: function() {
			$('#button-quote').attr('disabled', true);
			$('#button-quote').after('<span class="wait">&nbsp;<img src="catalog/view/theme/bonfire/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('#button-quote').attr('disabled', false);
			$('.wait').remove();
		},		
		success: function(json) {
			$('.success, .warning, .attention, .error').remove();			
						
			if (json['error']) {
				if (json['error']['warning']) {
					$('#notification').html('<div class="warning" style="display: none;">' + json['error']['warning'] + '<img src="catalog/view/theme/bonfire/image/close.png" alt="" class="close" /></div>');
					
					$('.warning').fadeIn('slow');
					
					$('html, body').animate({ scrollTop: 0 }, 'slow'); 
				}	
							
				if (json['error']['country']) {
					$('select[name=\'country_id\']').after('<span class="error">' + json['error']['country'] + '</span>');
				}	
				
				if (json['error']['zone']) {
					$('select[name=\'zone_id\']').after('<span class="error">' + json['error']['zone'] + '</span>');
				}
				
				if (json['error']['postcode']) {
					$('input[name=\'postcode\']').after('<span class="error">' + json['error']['postcode'] + '</span>');
				}					
			}
			
			if (json['shipping_method']) {
				//html  = '<h2><?php echo $text_shipping_method; ?></h2>';
				html = '<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">';
				html += '  <table class="radio">';
				
				for (i in json['shipping_method']) {
					/*html += '<tr>';
					html += '  <td colspan="3"><b>' + json['shipping_method'][i]['title'] + '</b></td>';
					html += '</tr>';*/
				
					if (!json['shipping_method'][i]['error']) {
						for (j in json['shipping_method'][i]['quote']) {
							html += '<tr class="highlight">';
							
							if (json['shipping_method'][i]['quote'][j]['code'] == '<?php echo $shipping_method; ?>') {
								html += '<td><input type="radio" name="shipping_method" value="' + json['shipping_method'][i]['quote'][j]['code'] + '" id="' + json['shipping_method'][i]['quote'][j]['code'] + '" checked="checked" /></td>';
							} else {
								html += '<td><input type="radio" name="shipping_method" value="' + json['shipping_method'][i]['quote'][j]['code'] + '" id="' + json['shipping_method'][i]['quote'][j]['code'] + '" /></td>';
							}
								
							html += '  <td><label for="' + json['shipping_method'][i]['quote'][j]['code'] + '">' + json['shipping_method'][i]['quote'][j]['title'] + '</label></td>';
							html += '  <td style="text-align: right;"><label for="' + json['shipping_method'][i]['quote'][j]['code'] + '">' + json['shipping_method'][i]['quote'][j]['text'] + '</label></td>';
							html += '</tr>';
						}		
					} else {
						html += '<tr>';
						html += '  <td colspan="3"><div class="error">' + json['shipping_method'][i]['error'] + '</div></td>';
						html += '</tr>';						
					}
				}
				
				html += '  </table>';
				html += '  <br />';
				html += '  <input type="hidden" name="next" value="shipping" />';
				
				<?php if ($shipping_method) { ?>
				html += '  <input type="submit" value="<?php echo $button_shipping; ?>" id="button-shipping" class="button" />';	
				<?php } else { ?>
				html += '  <input type="submit" value="<?php echo $button_shipping; ?>" id="button-shipping" class="button" disabled="disabled" />';	
				<?php } ?>
							
				html += '</form>';
				
				$.colorbox({
					overlayClose: true,
					opacity: 0.5,
					width: '600px',
					height: '400px',
					href: false,
					html: html
				});
				
				$('input[name=\'shipping_method\']').bind('change', function() {
					$('#button-shipping').attr('disabled', false);
				});
			}
		}
	});
});
//--></script> 
<script type="text/javascript"><!--
$('select[name=\'country_id\']').bind('change', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/bonfire/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('.wait').remove();
		},			
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('#postcode-required').show();
			} else {
				$('#postcode-required').hide();
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
			
			$('select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('select[name=\'country_id\']').trigger('change');
//--></script>
<?php } ?>
<?php echo $footer; ?>