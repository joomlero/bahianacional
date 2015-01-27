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
                    
                    <div class="column">
                            <ul>
                            	  <?php 
                                  foreach ($informations_izquierda as $information) { ?>
                                    <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                                    <?php } ?>
                            </ul>
                    </div>
                    
                    <div id="redes_sociales">
                        <div id="contenedor_iconos">
                            <div id="pic">
                                <a target="_blank" href="<?php echo $contact?>" title="Follow us on facebook"><img id="contacto_icono" alt="" src="catalog/view/theme/bonfire/images/contacto.jpg" onmouseover="hoverImagen(this.id);" onmouseout="apagaImagen(this.id)"/></a>
                            </div>
                            <div id="face_bottom">
                                <a target="_blank" href="https://www.facebook.com/profile.php?id=100005904888166" title="Follow us on facebook"><img id="face_book" alt="" src="catalog/view/theme/bonfire/images/facebook_nuevo.jpg" onmouseover="hoverImagen(this.id);" onmouseout="apagaImagen(this.id)"/></a>
                            </div>
                            <div id="camarita">
                                <a target="_blank" href="http://instagram.com/bahiafrescobol" title="Follow us on instagram"><img id="instagram" alt="" src="catalog/view/theme/bonfire/images/instagram.jpg" onmouseover="hoverImagen(this.id);" onmouseout="apagaImagen(this.id)"/></a>
                            </div>
                            <div id="twitter_botom">
                                <a target="_blank" href="https://twitter.com/Bahiafrescobo1" title="Follow us on twitter"><img id="twitter" alt="" src="catalog/view/theme/bonfire/images/twittw_nuevo.jpg" onmouseover="hoverImagen(this.id);" onmouseout="apagaImagen(this.id)"/></a>
                            </div>
                        </div>	
                    </div>
                    <div class="column" style="float:right; margin-right: 6px; text-align: right;">
                            <ul>
                            <?php 
                                foreach ($informations_derecha as $information) { ?>
                                <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                            <?php } ?>
                            </ul>
                    </div>
                    
                    
            
    </div>
        </div>
    <!-- END of FOOTER -->
    <?php } ?>
    
    <!-- START of COPYRIGHTS-WRAPPER -->
    <div class="copyright-wrapper">
    
        <div id="copyrights" class="clearfix">
                    <?php /*?><p class="left">Powered By </a> <a href="http://www.brainfarm.com.mx" target="_blank">Brainfarm</a></p><?php */?>
                    <p><span>Bah&iacute;a Nacional</span> 2012 Todos los derchos reservados. Powered By <span><a href="http://www.apachestudio.mx">Apache.</a></span></p>
        </div><!-- end of #copyrights -->
    
    </div>
    <!-- END of COPYRIGHTS-WRAPPER -->
    
    
    <!-- jQuery Easing -->
	<script type="text/javascript" src="catalog/view/theme/bonfire/js/jquery.easing.1.3.js"></script>
	<script type="text/javascript" src="catalog/view/theme/bonfire/js/funcionesFooter.js"></script>
	
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