<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  
  <?php if ($error_warning) { ?>
  	<div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/module.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><?php echo $button_cancel; ?></a></div>
    </div>
  	<div class="content">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
      <table class="form">
      	<tr>
            	<td style="width:30%">Theme Settings</td>
            </tr>
      </table>
      <table class="form">      		
      		
			<tr>
                <td>Store Slogan:</td>
                        <td>
                           <input type="text" name="bonfire[slogan]" value="<?php if(isset($bonfire['slogan'])){ echo $bonfire['slogan']; } ?>" />
				</td>
        	</tr>
			
      		<tr>
                <td>RSS Link:</td>
                        <td>
                           <input type="text" name="bonfire[rssLink]" value="<?php if(isset($bonfire['rssLink'])){ echo $bonfire['rssLink']; } ?>" />
				</td>
        	</tr>
            <tr>
                <td>Facebook Link:</td>
                    <td>
                       <input type="text" name="bonfire[fbLink]" value="<?php if(isset($bonfire['fbLink'])){ echo $bonfire['fbLink']; } ?>" />
                </td>
            </tr>
            <tr>
            	<td>Twitter Link: </td>
                    <td>
                       <input type="text" name="bonfire[twLink]" value="<?php if(isset($bonfire['twLink'])){ echo $bonfire['twLink']; } ?>" />
                </td>
            </tr>
            <tr>
            	<td>Skype Username: </td>
                    <td>
                       <input type="text" name="bonfire[skypeUsername]" value="<?php if(isset($bonfire['skypeUsername'])){ echo $bonfire['skypeUsername']; } ?>" />
                </td>
            </tr>
			
			<tr>
            	<td>Google Maps Code (For Contact Page) </td>
                    <td><textarea id="bonfire[googleMap]" name="bonfire[googleMap]" cols="60" rows="10"><?php if(isset($bonfire['googleMap'])){ echo $bonfire['googleMap']; } ?></textarea></td>
            </tr>
			
			<tr>
            	<td>Footer About Module: </td>
                    <td><textarea id="bonfire[footerAbout]" name="bonfire[footerAbout]" cols="60" rows="10"><?php if(isset($bonfire['footerAbout'])){ echo $bonfire['footerAbout']; } ?></textarea></td>
            </tr>
			<tr>
            	<td>Page Bottom 1. Content: </td>
                    <td><textarea id="bonfire[pageBottom1]" name="bonfire[pageBottom1]" cols="60" rows="10"><?php if(isset($bonfire['pageBottom1'])){ echo $bonfire['pageBottom1']; } ?></textarea></td>
            </tr>
			<tr>
            	<td>Page Bottom 2. Content: </td>
                    <td><textarea id="bonfire[pageBottom2]" name="bonfire[pageBottom2]" cols="60" rows="10"><?php if(isset($bonfire['pageBottom2'])){ echo $bonfire['pageBottom2']; } ?></textarea></td>
            </tr>
			<tr>
            	<td>Page Bottom 3. Content: </td>
                    <td><textarea id="bonfire[pageBottom3]" name="bonfire[pageBottom3]" cols="60" rows="10"><?php if(isset($bonfire['pageBottom3'])){ echo $bonfire['pageBottom3']; } ?></textarea></td>
            </tr>
      </table>
    </div>
  
  </div>
</div>
<?php echo $footer; ?>