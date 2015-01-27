<!-- START of FEATURED PRODUCTS -->
            <div class="product-listing">
             		<h3><span><?php echo $heading_title; ?></span></h3>
                    
                    <ul class="clearfix">
							<?php foreach ($products as $key => $product) { ?>
                    		<li class="product <?php if(((($key+1)%4) == 0)) echo "last"; ?>">
								<?php if ($product['thumb']) { ?>
                            	<a href="<?php echo $product['href']; ?>" class="thumb"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a>
								<?php } ?>
                                <a href="<?php echo $product['href']; ?>" class="title"><?php echo $product['name']; ?></a>
                                <div class="clearfix info" style="display:none;">
                                	<a onclick="addToCart('<?php echo $product['product_id']; ?>');" class="add-to-cart"><?php echo $button_cart; ?></a>
									<?php if ($product['price']) { ?>
									  <?php if (!$product['special']) { ?>
									  <span class="price-text"><span><?php echo $product['price']; ?></span></span>
									  <?php } else { ?>
									  <span class="price-text" style="text-decoration:line-through; margin-top: -17px; font-size: 14px;"><?php echo $product['price']; ?></span><span class="price-text" style="margin-top: -10px;"><span><?php echo $product['special']; ?></span></span>
									  <?php } ?>
									<?php } ?>
                                </div>
                            </li>
							<?php } ?>
                    </ul>
            </div>
<!-- END of FEATURED PRODUCTS -->