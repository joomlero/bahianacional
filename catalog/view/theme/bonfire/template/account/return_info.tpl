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
	  <table class="table_style" style="width: 100%;">
		<thead>
		  <tr>
			<th colspan="2"><?php echo $text_return_detail; ?></th>
		  </tr>
		</thead>
		<tbody>
		  <tr>
			<td><b><?php echo $text_return_id; ?></b> #<?php echo $return_id; ?><br />
			  <b><?php echo $text_date_added; ?></b> <?php echo $date_added; ?></td>
			<td><b><?php echo $text_order_id; ?></b> #<?php echo $order_id; ?><br />
			  <b><?php echo $text_date_ordered; ?></b> <?php echo $date_ordered; ?></td>
		  </tr>
		</tbody>
	  </table>
	  <h3><span><?php echo $text_product; ?></span></h3>
	  <table class="table_style" style="width: 100%;">
		<thead>
		  <tr>
			<th><?php echo $column_product; ?></th>
			<th><?php echo $column_model; ?></th>
			<th><?php echo $column_quantity; ?></th>
		  </tr>
		</thead>
		<tbody>
		  <tr>
			<td><?php echo $product; ?></td>
			<td><?php echo $model; ?></td>
			<td><?php echo $quantity; ?></td>
		  </tr>
		</tbody>
	  </table>
	  <table class="table_style" style="width: 100%;">
		<thead>
		  <tr>
			<th><?php echo $column_reason; ?></th>
			<th><?php echo $column_opened; ?></th>
			<th><?php echo $column_action; ?></th>
		  </tr>
		</thead>
		<tbody>
		  <tr>
			<td><?php echo $reason; ?></td>
			<td><?php echo $opened; ?></td>
			<td><?php echo $action; ?></td>
		  </tr>
		</tbody>
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
	  <h3><span><?php echo $text_history; ?></span></h3>
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