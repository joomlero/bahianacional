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
	  <h1><?php echo $heading_title; ?></h1>
	  <p><?php echo $text_total; ?><b> <?php echo $total; ?></b>.</p>
	  <table class="table_style" style="width: 100%;">
		<thead class="table_style">
		  <tr>
			<th class="table_style"><?php echo $column_date_added; ?></th>
			<th class="table_style"><?php echo $column_description; ?></th>
			<th class="table_style"><?php echo $column_amount; ?></th>
		  </tr>
		</thead>
		<tbody class="table_style">
		  <?php if ($transactions) { ?>
		  <?php foreach ($transactions  as $transaction) { ?>
		  <tr>
			<td ><?php echo $transaction['date_added']; ?></td>
			<td ><?php echo $transaction['description']; ?></td>
			<td ><?php echo $transaction['amount']; ?></td>
		  </tr>
		  <?php } ?>
		  <?php } else { ?>
		  <tr>
			<td class="center" colspan="5"><?php echo $text_empty; ?></td>
		  </tr>
		  <?php } ?>
		</tbody>
	  </table>
	  <div class="pagination"><?php echo $pagination; ?></div>
	  <div class="buttons">
		<div class="right"><a href="<?php echo $continue; ?>" class="button cont"><?php echo $button_continue; ?></a></div>
	  </div>
	</div>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>