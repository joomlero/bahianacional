<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?><img src="catalog/view/theme/bonfire/image/close.png" alt="" class="close" /></div>
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
	  <?php if ($products) { ?>
	  <div class="table_style">
		<table>
		  <thead>
			<tr>
			  <th class="image"><?php echo $column_image; ?></td>
			  <th class="name"><?php echo $column_name; ?></td>
			  <th class="model"><?php echo $column_model; ?></td>
			  <th class="stock"><?php echo $column_stock; ?></td>
			  <th class="price"><?php echo $column_price; ?></td>
			  <th class="action"><?php echo $column_action; ?></td>
			</tr>
		  </thead>
		  <?php foreach ($products as $product) { ?>
		  <tbody id="wishlist-row<?php echo $product['product_id']; ?>" class="table_style">
			<tr>
			  <td class="image"><?php if ($product['thumb']) { ?>
				<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
				<?php } ?></td>
			  <td class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></td>
			  <td class="model"><?php echo $product['model']; ?></td>
			  <td class="stock"><?php echo $product['stock']; ?></td>
			  <td class="price"><?php if ($product['price']) { ?>
				<div class="price">
				  <?php if (!$product['special']) { ?>
				  <?php echo $product['price']; ?>
				  <?php } else { ?>
				  <s><?php echo $product['price']; ?></s> <b><?php echo $product['special']; ?></b>
				  <?php } ?>
				</div>
				<?php } ?></td>
			  <td class="action"><img src="catalog/view/theme/bonfire/image/cart-add.png" alt="<?php echo $button_cart; ?>" title="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" />&nbsp;&nbsp;<a href="<?php echo $product['remove']; ?>"><img src="catalog/view/theme/bonfire/image/remove.png" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" /></a></td>
			</tr>
		  </tbody>
		  <?php } ?>
		</table>
	  </div>
	  <div class="buttons">
		<div class="right"><a href="<?php echo $continue; ?>" class="button cont"><?php echo $button_continue; ?></a></div>
	  </div>
	  <?php } else { ?>
	  <div class="content"><p class="msg"><?php echo $text_empty; ?></p></div>
	  <div class="buttons">
		<div class="right"><a href="<?php echo $continue; ?>" class="button cont"><?php echo $button_continue; ?></a></div>
	  </div>
	  <?php } ?>
	</div>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>