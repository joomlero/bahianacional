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
	  <h1><?php echo $text_critea; ?></h1><br /><br />
	  <div id="search-content">
		<p><label><?php echo $entry_search; ?></label><br/>
		  <?php if ($filter_name) { ?>
		  <input type="text" name="filter_name" value="<?php echo $filter_name; ?>" class="text"/>
		  <?php } else { ?>
		  <input type="text" name="filter_name" value="<?php echo $filter_name; ?>" onclick="this.value = '';" onkeydown="this.style.color = '000000'" style="color: #999;" class="text"/>
		  <?php } ?>
		  <select name="filter_category_id">
			<option value="0"><?php echo $text_category; ?></option>
			<?php foreach ($categories as $category_1) { ?>
			<?php if ($category_1['category_id'] == $filter_category_id) { ?>
			<option value="<?php echo $category_1['category_id']; ?>" selected="selected"><?php echo $category_1['name']; ?></option>
			<?php } else { ?>
			<option value="<?php echo $category_1['category_id']; ?>"><?php echo $category_1['name']; ?></option>
			<?php } ?>
			<?php foreach ($category_1['children'] as $category_2) { ?>
			<?php if ($category_2['category_id'] == $filter_category_id) { ?>
			<option value="<?php echo $category_2['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
			<?php } else { ?>
			<option value="<?php echo $category_2['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
			<?php } ?>
			<?php foreach ($category_2['children'] as $category_3) { ?>
			<?php if ($category_3['category_id'] == $filter_category_id) { ?>
			<option value="<?php echo $category_3['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
			<?php } else { ?>
			<option value="<?php echo $category_3['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
			<?php } ?>
			<?php } ?>
			<?php } ?>
			<?php } ?>
		  </select>
		  <?php if ($filter_sub_category) { ?>
		  <input type="checkbox" name="filter_sub_category" value="1" id="sub_category" checked="checked" />
		  <?php } else { ?>
		  <input type="checkbox" name="filter_sub_category" value="1" id="sub_category" />
		  <?php } ?>
		  <label for="sub_category"><?php echo $text_sub_category; ?></label>
		</p>
		<?php if ($filter_description) { ?>
		<input type="checkbox" name="filter_description" value="1" id="description" checked="checked" />
		<?php } else { ?>
		<input type="checkbox" name="filter_description" value="1" id="description" />
		<?php } ?>
		<label for="description"><?php echo $entry_description; ?></label>
	  </div>
	  <div class="buttons">
		<div class="left"><input type="button" value="<?php echo $button_search; ?>" id="button-search" class="button cont" /></div>
	  </div>
	  <br /><br /><br /><br /><h2><?php echo $text_search; ?></h2><br />
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

	</div><!-- end of #product-list -->
  <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
$('#search-content input[name=\'filter_name\']').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#button-search').trigger('click');
	}
});

$('#button-search').bind('click', function() {
	url = 'index.php?route=product/search';
	
	var filter_name = $('#search-content input[name=\'filter_name\']').attr('value');
	
	if (filter_name) {
		url += '&filter_name=' + encodeURIComponent(filter_name);
	}

	var filter_category_id = $('#search-content select[name=\'filter_category_id\']').attr('value');
	
	if (filter_category_id > 0) {
		url += '&filter_category_id=' + encodeURIComponent(filter_category_id);
	}
	
	var filter_sub_category = $('#search-content input[name=\'filter_sub_category\']:checked').attr('value');
	
	if (filter_sub_category) {
		url += '&filter_sub_category=true';
	}
		
	var filter_description = $('#search-content input[name=\'filter_description\']:checked').attr('value');
	
	if (filter_description) {
		url += '&filter_description=true';
	}

	location = url;
});

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