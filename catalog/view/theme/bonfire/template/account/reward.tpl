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
	  <p class="msg"><?php echo $text_total; ?><b> <?php echo $total; ?></b>.</p>
	  <table class="table_style" style="width: 100%;">
		<thead>
		  <tr>
			<th><?php echo $column_date_added; ?></th>
			<th><?php echo $column_description; ?></th>
			<th><?php echo $column_points; ?></th>
		  </tr>
		</thead>
		<tbody>
		  <?php if ($rewards) { ?>
		  <?php foreach ($rewards  as $reward) { ?>
		  <tr>
			<td class="left"><?php echo $reward['date_added']; ?></td>
			<td class="left"><?php if ($reward['order_id']) { ?>
			  <a href="<?php echo $reward['href']; ?>"><?php echo $reward['description']; ?></a>
			  <?php } else { ?>
			  <?php echo $reward['description']; ?>
			  <?php } ?></td>
			<td class="right"><?php echo $reward['points']; ?></td>
		  </tr>
		  <?php } ?>
		  <?php } else { ?>
		  <tr>
			<td class="center" colspan="5"><p class="msg"><?php echo $text_empty; ?></p></td>
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