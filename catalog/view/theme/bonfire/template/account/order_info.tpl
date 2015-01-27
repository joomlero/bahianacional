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
	  <table class="table_style" style="width: 100%">
		<thead class="table_style">
		  <tr>
			<th colspan="2" class="table_style"><?php echo $text_order_detail; ?></th>
		  </tr>
		</thead>
		<tbody>
		  <tr>
			<td><?php if ($invoice_no) { ?>
			  <b><?php echo $text_invoice_no; ?></b> <?php echo $invoice_no; ?><br />
			  <?php } ?>
			  <b><?php echo $text_order_id; ?></b> #<?php echo $order_id; ?><br />
			  <b><?php echo $text_date_added; ?></b> <?php echo $date_added; ?></td>
			<td><?php if ($payment_method) { ?>
			  <b><?php echo $text_payment_method; ?></b> <?php echo $payment_method; ?><br />
			  <?php } ?>
			  <?php if ($shipping_method) { ?>
			  <b><?php echo $text_shipping_method; ?></b> <?php echo $shipping_method; ?>
			  <?php } ?></td>
		  </tr>
		</tbody>
	  </table>
	  <table class="table_style" style="width: 100%">
		<thead class="table_style">
		  <tr>
			<th><?php echo $text_payment_address; ?></th>
			<?php if ($shipping_address) { ?>
			<th><?php echo $text_shipping_address; ?></th>
			<?php } ?>
		  </tr>
		</thead>
		<tbody>
		  <tr>
			<td><?php echo $payment_address; ?></td>
			<?php if ($shipping_address) { ?>
			<td><?php echo $shipping_address; ?></td>
			<?php } ?>
		  </tr>
		</tbody>
	  </table>
	  <table class="table_style" style="width: 100%">
		<thead>
		  <tr>
			<th><?php echo $column_name; ?></th>
			<th><?php echo $column_model; ?></th>
			<th><?php echo $column_quantity; ?></th>
			<th><?php echo $column_price; ?></th>
			<th><?php echo $column_total; ?></th>
			<?php if ($products) { ?>
			<th style="width: 1px;"></th>
			<?php } ?>
		  </tr>
		</thead>
		<tbody>
		  <?php foreach ($products as $product) { ?>
		  <tr>
			<td><?php echo $product['name']; ?>
			  <?php foreach ($product['option'] as $option) { ?>
			  <br />
			  &nbsp;<small> - <?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
			  <?php } ?></td>
			<td><?php echo $product['model']; ?></td>
			<td><?php echo $product['quantity']; ?></td>
			<td><?php echo $product['price']; ?></td>
			<td><?php echo $product['total']; ?></td>
			<td><a href="<?php echo $product['return']; ?>"><img src="catalog/view/theme/bonfire/image/return.png" alt="<?php echo $button_return; ?>" title="<?php echo $button_return; ?>" /></a></td>
		  </tr>
		  <?php } ?>
		  <?php foreach ($vouchers as $voucher) { ?>
		  <tr>
			<td><?php echo $voucher['description']; ?></td>
			<td></td>
			<td>1</td>
			<td><?php echo $voucher['amount']; ?></td>
			<td><?php echo $voucher['amount']; ?></td>
			<?php if ($products) { ?>
			<td></td>
			<?php } ?>
		  </tr>
		  <?php } ?>
		</tbody>
		<tfoot class="table_style">
		  <?php foreach ($totals as $total) { ?>
		  <tr>
			<td colspan="3"></td>
			<td><b><?php echo $total['title']; ?>:</b></td>
			<td><?php echo $total['text']; ?></td>
			<?php if ($products) { ?>
			<td></td>
			<?php } ?>
		  </tr>
		  <?php } ?>
		</tfoot>
	  </table>
	  <?php if ($comment) { ?>
	  <table class="table_style" style="width: 100%;">
		<thead>
		  <tr>
			<td><?php echo $text_comment; ?></td>
		  </tr>
		</thead>
		<tbody>
		  <tr>
			<td><?php echo $comment; ?></td>
		  </tr>
		</tbody>
	  </table>
	  <?php } ?>
	  <?php if ($histories) { ?>
	  <h2><?php echo $text_history; ?></h2><br />
	  <table class="table_style" style="width: 100%;">
		<thead>
		  <tr>
			<th><?php echo $column_date_added; ?></th>
			<th><?php echo $column_status; ?></th>
			<th><?php echo $column_comment; ?></th>
		  </tr>
		</thead>
		<tbody>
		  <?php foreach ($histories as $history) { ?>
		  <tr>
			<td><?php echo $history['date_added']; ?></td>
			<td><?php echo $history['status']; ?></td>
			<td><?php echo $history['comment']; ?></td>
		  </tr>
		  <?php } ?>
		</tbody>
	  </table>
	  <?php } ?>
	  <div class="buttons">
		<div class="right"><a href="<?php echo $continue; ?>" class="button cont"><?php echo $button_continue; ?></a></div>
	  </div>
	</div>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?> 