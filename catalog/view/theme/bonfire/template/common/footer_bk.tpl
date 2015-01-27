</div><!-- end of .container -->
    <?php $themeSettings =  $this->config->get('bonfire'); { ?>
								
	<!-- START of PAGE-BOTTOM -->
    <div class="page-bottom-wrapper">
    		
            <div id="page-bottom" class="clearfix">
                    <div class="box">
						<?php if(isset($themeSettings['pageBottom1'])){ echo html_entity_decode($themeSettings['pageBottom1']); } ?>
                    </div><!-- end of .box -->
					<div class="box">
						<?php if(isset($themeSettings['pageBottom2'])){ echo html_entity_decode($themeSettings['pageBottom2']); } ?>
                    </div><!-- end of .box -->
					<div class="box last">
						<?php if(isset($themeSettings['pageBottom3'])){ echo html_entity_decode($themeSettings['pageBottom3']); } ?>
                    </div><!-- end of .box -->
					
                    
            </div><!-- end of #page-bottom -->
            
    </div>
    <!-- END of PAGE-BOTTOM -->
    
    
    <!-- START of FOOTER -->
    <div class="footer-wrapper">
    		
            <div id="footer" class="clearfix">
            
            		<div class="column double">
							<?php if(isset($themeSettings['footerAbout'])){ echo html_entity_decode($themeSettings['footerAbout']); } ?>
                    </div>
                    <?php if ($informations) { ?>
                    <div class="column">
                    		<h3><?php echo $text_information; ?></h3>
                            <ul>
                            	  <?php foreach ($informations as $information) { ?>
								  <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
								  <?php } ?>
								  <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>

                            </ul>
                    </div>
                    <?php } ?>
                    <div class="column">
                    		<h3><?php echo $text_account; ?></h3>
                            <ul>
                            		<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                                    <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
												
							</ul>
                    </div>
                    

            
    </div>
    <!-- END of FOOTER -->
    <?php } ?>
    
    <!-- START of COPYRIGHTS-WRAPPER -->
    <div class="copyright-wrapper">
    
    		<div id="copyrights" class="clearfix">
            		<p class="left">Powered By </a> <a href="http://www.brainfarm.com.mx" target="_blank">Brainfarm</a></p>
                    <p class="right">B-Frescobol 2012 Todos los derchos reservados </a> </p>
            </div><!-- end of #copyrights -->
    
    </div>
    <!-- END of COPYRIGHTS-WRAPPER -->
    
    
    <!-- jQuery Easing -->
	<script type="text/javascript" src="catalog/view/theme/bonfire/js/jquery.easing.1.3.js"></script>
	
    <!-- jQuery Selectbox Script to custom style form select boxes -->
    <script type="text/javascript" src="catalog/view/theme/bonfire/js/jquery.selectBox.js"></script>
    
    <!-- jQuery Cycle Plugin for home page slider-->
    <script type="text/javascript" src="catalog/view/theme/bonfire/js/jquery.cycle.all.js"></script>
    
    <!-- jQuery Tabs and Accordion Script -->
    <script type="text/javascript" src="catalog/view/theme/bonfire/js/tabs-accordian.js"></script>
    
    <!-- jQuery Coud Zoom Plugin for Product Page Image Zoom Effect-->
    <script type="text/JavaScript" src="catalog/view/theme/bonfire/js/cloud-zoom.1.0.2.js"></script>
    
    <!-- jQuery Animate Color Plugin for Hover Color Animation for Links-->
    <script type="text/javascript" src="catalog/view/theme/bonfire/js/jquery.animate-colors-min.js"></script>           
    
    <!-- jQuery Form and Validation Plugin for Contact form validation and ajax submition -->
    <script type="text/javascript" src="catalog/view/theme/bonfire/js/jquery.form.js"></script>
    <script type="text/javascript" src="catalog/view/theme/bonfire/js/jquery.validate.js"></script>    	
	
    <!-- script file to add your own JavaScript -->
	<script type="text/javascript" src="catalog/view/theme/bonfire/js/script.js"></script>
</body></html>