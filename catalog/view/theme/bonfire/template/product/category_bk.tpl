<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div class="inner-container clearfix"><?php echo $content_top; ?>
  <div id="all-product">
	<?php if ($products) { ?>
		<?php if ($thumb || $description) { ?>
		  <div class="cat-description">
			<?php if ($thumb) { ?>
			<div class="thumb"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" /></div>
			<?php } ?>
			<div class="data">
			<?php if ($description) { ?>
			<p><?php echo $description; ?></p>
			<?php } ?>
			</div>
		  </div>
		  <?php } ?>
		<p class="clearfix"></p>
		<h3>
			<span><?php echo $heading_title; ?></span>
			<a class="list">List<span>&nbsp;</span></a>
			<a class="grid">Grid<span>&nbsp;</span></a>
		</h3>
											  
		<ul class="clearfix grid-view">
		<?php foreach ($products as $key => $product) { ?>
			<li class="product <?php if(((($key+1)%3) == 0)) echo "last"; ?>">
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
	</div><!-- end of #product-list -->
					
  <?php echo $content_bottom; ?></div>
  <script type="text/javascript"><!--
function display(view) {
	if (view == 'list') {
		$('#all-product ul').removeClass('grid-view');
		$('#all-product ul').addClass('list-view');
		$.cookie('display', 'list'); 
	} else {
		$('#all-product ul').removeClass('list-view');
		$('#all-product ul').addClass('grid-view');
		$.cookie('display', 'grid');
	}
}
	// LIST-GRID TOGGLE EFFECT
	$('#all-product h3 a.list').click(function(){
			$('#all-product ul').removeClass('grid-view');
			$('#all-product ul').addClass('list-view');
			$.cookie('display', 'list');
		});
	
	$('#all-product h3 a.grid').click(function(){
			$('#all-product ul').removeClass('list-view');
			$('#all-product ul').addClass('grid-view');
			$.cookie('display', 'grid');
		});		
			
			
view = $.cookie('display');

if (view) {
	display(view);
} else {
	display('list');
}
//--></script>
<?php echo $footer; ?>