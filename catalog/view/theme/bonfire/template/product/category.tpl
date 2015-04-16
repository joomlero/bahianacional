<?php echo $header; ?><?php //echo $column_left; ?><?php //echo $column_right; ?>
<div class="inner-container clearfix"><?php //echo $content_top; ?>
    <?php
        //print 'productos totales<pre>'.print_r($categorias,true).'</pre>';
        foreach($categories as $categoria){
            $categoriaId = $categoria['category_id'];
            if(!empty($categorias[$categoriaId])){ ?>
    <div><p class="clearfix"></p>
        <div style="height: 25px; color:#19233a; font:13px corbelregular,Arial,Helvetica,sans-serif; border-bottom: #19233a solid thin"><?=$categoria['name']?></div>
        <div id="all-product">
	<?php if (!empty($categorias[$categoriaId]['products'])) {
		foreach($categorias[$categoriaId]['products'] as $product){
                }
                if ($thumb || $description) { ?>
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
		<?php /*?><h3>
			<span><?php echo $heading_title; ?></span>
			<a class="list">List<span>&nbsp;</span></a>
			<a class="grid">Grid<span>&nbsp;</span></a>
		</h3>
			<?php */?>								  
		<ul class="clearfix grid-view">
		<?php 
                
                foreach ($categorias[$categoriaId]['products'] as $key => $product) { ?>
			<li class="product <?php if(((($key+1)%3) == 0)) echo 'last'; ?>">
                            <div class="data" style="width:270px; text-align: center; margin-top:-35px;">
                                <?php
                                    $arrProductoName = explode('-',$product['name']);
                                    $productName = $arrProductoName[0];
                                    if(count($arrProductoName) > 1){
                                        $arrProductoNameComplemento = explode(' ',$arrProductoName[1]);
                                        if(isset($arrProductoNameComplemento[0])){
                                            $productName .= '<br>'.$arrProductoNameComplemento[0];
                                        }
                                        if(isset($arrProductoNameComplemento[1])){
                                            $productName .= ' '.$arrProductoNameComplemento[1];
                                        }
                                        if(isset($arrProductoNameComplemento[2])){
                                            $productName .= '<br>'.$arrProductoNameComplemento[2];
                                        }
                                        if(isset($arrProductoNameComplemento[3])){
                                            $productName .= ' '.$arrProductoNameComplemento[3];
                                        }
                                    }
                                ?>
					<a href="<?php echo $product['href']; ?>" class="title"><?php echo $productName; ?></a>
					<p><?php //echo $product['description']; ?></p>
					<!--<div class="clearfix info">
						<a onclick="addToCart('<?php echo $product['product_id']; ?>');" class="add-to-cart"><?php echo $button_cart; ?></a>
						<?php if ($product['price']) { ?>
						  <?php if (!$product['special']) { ?>
						  <span class="price-text"><span><?php echo $product['price']; ?></span></span>
						  <?php } else { ?>
						  <span class="price-text" style="text-decoration:line-through; margin-top: -17px; font-size: 14px;"><?php echo $product['price']; ?></span><span class="price-text" style="margin-top: -10px;"><span><?php echo $product['special']; ?></span></span>
						  <?php } ?>
						<?php } ?>
					</div>-->
				  </div>
				<a href="<?php echo $product['href']; ?>" class="thumb" style="margin-left: 36px!important;">
                                    <?php
                                        /*if($product['image_collection'] != ''){ 
                                        $imagenCambio = $product['image_collection'];
                                        $imagenOriginal = $product['thumb'];
                                        ?>
                                        <img id="<?php echo $product['product_id']; ?>" src="<?php echo $product['thumb']; ?>" onmouseout="cambiaImagenOut(this.id,'<?=$imagenOriginal?>')" onmouseover="cambiaImagenHover(this.id,'<?=$imagenCambio?>')" alt="<?php echo $product['name']; ?>" />
                                    <?php 
                                        } else { */
                                    ?>
                                        <img id="<?php echo $product['product_id']; ?>" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" />
                                    <?php    
                                       // }
                                    ?>
                                </a>
				  
			  </li>
		<?php } ?>
		</ul>
		<div class="pagination"><?php echo $pagination; ?></div>
		<?php } else { ?>
		  <p class="msg"><?php //echo $text_empty; ?></p>
		<?php }?>
	</div><!-- end of #product-list -->
    </div>    
                
            <?php } else {
                continue;
            }
        }//Fin ciclo por categoria
    ?>
					
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
			
			
//view = $.cookie('display');
view = 'grid';

if (view) {
	display(view);
} else {
	display('grid');
}
//-->
    function cambiaImagenHover(id,imagen){
       // alert(imagen);
        $('#'+id).removeAttr('src');
        $('#'+id).attr('src',imagen);
    }
    
    function cambiaImagenOut(id,imagen){
        $('#'+id).removeAttr('src');
        $('#'+id).attr('src',imagen);
    }
    
  </script>
  <div style="height: 110px; width: 100%;"></div>
<?php echo $footer; ?>