<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div class="inner-container clearfix" style="min-height: 200px;"><?php echo $content_top; ?>
	<!-- START of BREADCRUMBS -->
	<p id="breadcrumbs">
			<?php foreach ($breadcrumbs as $breadcrumb) { ?>
			<a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
			<?php } ?>
	</p>
	<!-- END of BREADCRUMBS -->
  
  
	  <div id="contact">
						
		<h3 class="main-heading"><span><?php echo $heading_title; ?></span></h3>
		
		<h4 class="sub-heading">Address</h4>
		
		<div class="address">                            
				<em><?php echo $text_location; ?></em>
				<p><?php echo $text_address; ?>: <?php echo $store; ?> // <?php echo $address; ?></p>
				<?php if ($telephone) { ?>
				<em><?php echo $text_telephone; ?></em>
				<p><?php echo $telephone; ?></p>
				<?php } ?>
				<?php if ($fax) { ?>
				<em><?php echo $text_fax; ?></em>
				<p><?php echo $fax; ?></p>
				<?php } ?>                                 
				
				
				
				<!-- Google Map API call for contact page map -->                                        
				<?php $themeSettings =  $this->config->get('bonfire'); { ?>
                    <?php if(isset($themeSettings['googleMap']) && ($themeSettings['googleMap'] != '')){ ?>
					<div id="map_canvas"></div>  
					<?php echo html_entity_decode($themeSettings['googleMap']);  ?>
				<?php } } ?>               
		</div><!-- end of .address -->
	
	<!-- START OF CONTACT FORM SECTIOIN -->
	<div class="comments">
	
		<form id="register" class="comment-form" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
			
			  <h3><?php echo $heading_title; ?></h3>
			  
			  <div>
					<fieldset class="clearfix">
						<label for="name"><?php echo $entry_name; ?></label>
						<input name="name" id="name" type="text" class="required" value="<?php echo $name; ?>"/>
						    <br />
							<?php if ($error_name) { ?>
							<span class="required"><?php echo $error_name; ?></span>
							<?php } ?>
					</fieldset>
					<fieldset class="clearfix">
						<label for="email"><?php echo $entry_email; ?></label>
						<input name="email" id="email" type="text" class="required email" value="<?php echo $email; ?>"/>
							<br />
							<?php if ($error_email) { ?>
							<span class="required"><?php echo $error_email; ?></span>
							<?php } ?>
					</fieldset>
					<fieldset class="clearfix">
						<label for="message"><?php echo $entry_enquiry; ?></label>
						<textarea id="message" name="enquiry" cols="5" rows="5" class="required"></textarea>
						    <br />
							<?php if ($error_enquiry) { ?>
							<span class="required"><?php echo $error_enquiry; ?></span>
							<?php } ?>
					</fieldset>
					<fieldset class="clearfix">
						<label for="captcha"><?php echo $entry_captcha; ?></label>
						<input type="text" name="captcha" value="<?php echo $captcha; ?>" class="required captcha" />
						<br />
						<img src="index.php?route=information/contact/captcha" alt="" />
						<?php if ($error_captcha) { ?>
						<span class="required"><?php echo $error_captcha; ?></span>
						<?php } ?>
					</fieldset>
						<fieldset class="submit-button clearfix">
						<input name="submit" type="submit" class="submit" value="Submit" />
					</fieldset>
															  
					<img id="loader" src="images/loader.gif" />
					<p id="result"></p>
			  </div>
			  
			 
	  
	  </form><!-- end of #contact-form -->
	
	</div>                         
	<!-- END OF CONTACT FORM SECTIOIN-->
	
</div><!-- end of #contact -->
					
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>