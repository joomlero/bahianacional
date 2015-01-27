<!-- START of SLIDER -->
            <div id="slider">
            		<div class="slides" id="slides">
							<?php foreach ($banners as $banner) { ?>
                    		<div class="slide">
									<?php if ($banner['link']) { ?>
                            		<a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" /></a>
									<div class="caption">
                                    		<p><?php echo $banner['title']; ?></p>
                                    </div><!-- end of .caption -->									
									<?php } else { ?>
										<img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" />
										<?php } ?>
										<div class="caption">
                                    		<p><?php echo $banner['title']; ?></p>
                                    </div><!-- end of .caption -->			
                            </div><!-- end of .slide -->
							<?php } ?>
                            
							
                    </div><!-- end of .slides -->
                    
                    <div id="slider-pager"></div>                    
            </div>
<!-- END of SLIDER -->