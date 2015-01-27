<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div class="inner-container clearfix"><?php echo $content_top; ?>
	<!-- START of BREADCRUMBS -->
	<p id="breadcrumbs">
			<?php foreach ($breadcrumbs as $breadcrumb) { ?>
			<a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
			<?php } ?>
	</p>
	<!-- END of BREADCRUMBS -->
	<div id="all-product-full">
		<?php if ($products) { ?>

		<h3>
			<span><?php echo $heading_title; ?></span>
			<a class="list">List<span>&nbsp;</span></a>
			<a class="grid">Grid<span>&nbsp;</span></a>
		</h3>
											  
		<ul class="clearfix grid-view">
		<?php foreach ($products as $key => $product) { ?>
			<li class="product <?php if(((($key+1)%4) == 0)) echo "last"; ?>">
				<a href="<?php echo $product['href']; ?>" class="thumb"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a>
				  <div class="data">
					<a href="<?php echo $product['href']; ?>" class="title"><?php echo $product['name']; ?></a>
					<p><?php echo $product['description']; ?></p>
					<div class="clearfix info">
						<a onclick="addToCart('<?php echo $product['product_id']; ?>');" class="add-to-cart"><?php echo $button_cart; ?></a>
						<?php if ($product['price']) { ?>
						  <?php if (!$product['special']) { ?>
						  <span class="price-text"><span><?php echo $product['price']; ?></span></span>
						  <?php } else { ?>
						  <span class="price-text" style="text-decoration:line-through; margin-top: -17px; font-size: 14px;"><?php echo $product['price']; ?></span><span class="price-text" style="margin-top: -10px;"><span><?php echo $product['special']; ?></span></span>
						  <?php } ?>
						<?php } ?>
					</div>
				  </div>
			  </li>
		<?php } ?>
		</ul>
		<div class="pagination"><?php echo $pagination; ?></div>
		<?php } else { ?>
		  <p class="msg"><?php echo $text_empty; ?></p>
		<?php }?>
	</div>
  <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
function display(view) {
	if (view == 'list') {
		$('.product-grid').attr('class', 'product-list');
		
		$('.product-list > div').each(function(index, element) {
			html  = '<div class="right">';
			html += '  <div class="cart">' + $(element).find('.cart').html() + '</div>';
			html += '  <div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
			html += '  <div class="compare">' + $(element).find('.compare').html() + '</div>';
			html += '</div>';			
			
			html += '<div class="left">';
			
			var image = $(element).find('.image').html();
			
			if (image != null) { 
				html += '<div class="image">' + image + '</div>';
			}
			
			var price = $(element).find('.price').html();
			
			if (price != null) {
				html += '<div class="price">' + price  + '</div>';
			}
					
			html += '  <div class="name">' + $(element).find('.name').html() + '</div>';
			html += '  <div class="description">' + $(element).find('.description').html() + '</div>';
			
			var rating = $(element).find('.rating').html();
			
			if (rating != null) {
				html += '<div class="rating">' + rating + '</div>';
			}
				
			html += '</div>';

						
			$(element).html(html);
		});		
		
		$('.display').html('<b><?php echo $text_display; ?></b> <?php echo $text_list; ?> <b>/</b> <a onclick="display(\'grid\');"><?php echo $text_grid; ?></a>');
		
		$.cookie('display', 'list'); 
	} else {
		$('.product-list').attr('class', 'product-grid');
		
		$('.product-grid > div').each(function(index, element) {
			html = '';
			
			var image = $(element).find('.image').html();
			
			if (image != null) {
				html += '<div class="image">' + image + '</div>';
			}
			
			html += '<div class="name">' + $(element).find('.name').html() + '</div>';
			html += '<div class="description">' + $(element).find('.description').html() + '</div>';
			
			var price = $(element).find('.price').html();
			
			if (price != null) {
				html += '<div class="price">' + price  + '</div>';
			}
						
			var rating = $(element).find('.rating').html();
			
			if (rating != null) {
				html += '<div class="rating">' + rating + '</div>';
			}
						
			html += '<div class="cart">' + $(element).find('.cart').html() + '</div>';
			html += '<div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
			html += '<div class="compare">' + $(element).find('.compare').html() + '</div>';
			
			$(element).html(html);
		});	
					
		$('.display').html('<b><?php echo $text_display; ?></b> <a onclick="display(\'list\');"><?php echo $text_list; ?></a> <b>/</b> <?php echo $text_grid; ?>');
		
		$.cookie('display', 'grid');
	}
}

view = $.cookie('display');

if (view) {
	display(view);
} else {
	display('list');
}
//--></script> 
<?php echo $footer; ?>