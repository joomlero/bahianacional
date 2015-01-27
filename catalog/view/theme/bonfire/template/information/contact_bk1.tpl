<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div class="inner-container clearfix" style="min-height: 200px;"><?php echo $content_top; ?>
	<!-- START of BREADCRUMBS -->
	<?php /*?>
    <p id="breadcrumbs">
			<?php foreach ($breadcrumbs as $breadcrumb) { ?>
			<a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
			<?php } ?>
	</p>
    <?php */?>
	<!-- END of BREADCRUMBS -->
  
  
	  <div id="contact">
						
		<h3 class="main-heading"><span><?php echo $heading_title; ?></span></h3>
		
		<?php /*?><h4 class="sub-heading">Address</h4><?php */?>
		
		<div class="address" style="color:#c2c3c3;">                            
				<em><?php echo $text_location; ?></em>
				<p><?php echo $address; ?></p>
				<p><?php echo $text_telephone.' '. $telephone; ?></p>
				<p style='margin-top:-15px;'>Cel. +52 (55) 1 555 144 55 38</p>
                <br/>
				<p>info@bahiafrescobol.com</p>
				<p style='margin-top:-15px;'>alvaro@bahiafrescobol.com</p>
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
			
			  <div style="width: 300px; margin-left:-20px;">
					<fieldset class="clearfix">
						<label for="name"><?php echo $entry_name; ?></label><br/>
						<input name="name" id="name" type="text" class="required" value="<?php echo $name; ?>"/>
						    <br />
							<?php if ($error_name) { ?>
							<span class="required"><?php echo $error_name; ?></span>
							<?php } ?>
					</fieldset>
					<fieldset class="clearfix">
						<label for="email"><?php echo $entry_email; ?></label><br/>
						<input name="email" id="email" type="text" class="required email" value="<?php echo $email; ?>"/>
							<br />
							<?php if ($error_email) { ?>
							<span class="required"><?php echo $error_email; ?></span>
							<?php } ?>
					</fieldset>
					<fieldset class="clearfix"><br/>
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
						<input name="submit" type="submit" class="submit" value="<?php echo $text_button;?>" />
					</fieldset>
															  
					<img id="loader" src="images/loader.gif" />
					<p id="result"></p>
			  </div>
			  
			 
	  
	  </form><!-- end of #contact-form -->
	
	</div>                         
	<!-- END OF CONTACT FORM SECTIOIN-->
	
</div>
    <div style="float:left; width: 600px; margin-left: 40px; height: auto; text-align: justify;">
        <?php echo $description;?>
    </div><!-- end of #contact -->
					
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>