<?php if (isset($_SERVER['HTTP_USER_AGENT']) && !strpos($_SERVER['HTTP_USER_AGENT'], 'MSIE 6')) echo '<?xml version="1.0" encoding="UTF-8"?>'. "\n"; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" xml:lang="<?php echo $lang; ?>">
<head>
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/bonfire/stylesheet/style.css" />
<link rel="stylesheet" type="text/css" media="all" href="catalog/view/theme/bonfire/stylesheet/jquery.selectBox.css" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/external/jquery.cookie.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/colorbox/jquery.colorbox.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/colorbox/colorbox.css" media="screen" />
<script type="text/javascript" src="catalog/view/javascript/jquery/tabs.js"></script>
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<!--[if lt IE 7]>
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->
<?php echo $google_analytics; ?>
</head>
<!--[if lt IE 7 ]> <body class="ie6"> <![endif]-->
<!--[if IE 7 ]>    <body class="ie7"> <![endif]-->
<!--[if IE 8 ]>    <body class="ie8"> <![endif]-->
<!--[if IE 9 ]>    <body class="ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <body> <!--<![endif]-->
    <!-- START of HEADER WRAPPER -->
	<div class="header-wrapper">
    		
            <div id="header" class="clearfix">
                    
                    <!-- LOGO -->
                    <a href="<?php echo $home; ?>" class="logo"><img src="<?php echo $logo; ?>" alt="<?php echo $name; ?>" /></a>
                    
                    <!-- SLOGAN LINE -->
					<?php $themeSettings =  $this->config->get('bonfire'); { ?>
                    <strong class="slogan"><?php if(isset($themeSettings['slogan'])){ echo $themeSettings['slogan']; } ?></strong>
                    <?php } ?>
                    <!-- TOP NAV -->
                    <ul class="top-nav">
                        <?php /*?>
                            <li><a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a></li>
                            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                            <li><a href="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a></li>
                            <li><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></li><?php */?>
							<?php echo $cart; ?>
                    </ul><!-- end of .top-nav -->
                    
            </div><!-- end of #header -->
            
    </div>
	<!-- END OF HEADER WRAPPER -->
    
    
    <!-- START of NAVIGATION WRAPPER -->
    <div class="navigation-wrapper">
            
            <!-- MAIN NAVIGATION -->
			<?php if ($categories) { ?>
		    <ul id="navigation" class="clearfix">
            		<li><a href="<?php echo $home; ?>"><?php echo $text_home; ?></a></li>
            		<?php 
                        //print '<pre>'.print_r($categories,true).'</pre>';
                        foreach ($categories as $category) { ?>
					<li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
					  <?php if ($category['children']) { ?>
						<?php for ($i = 0; $i < count($category['children']);) { ?>
						<ul>
						  <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
						  <?php for (; $i < $j; $i++) { ?>
						  <?php if (isset($category['children'][$i])) { ?>
						  <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
						  <?php } ?>
						  <?php } ?>
						</ul>
						<?php } ?>
					  <?php } ?>
					</li>
					<?php } ?>
		    </ul><?php } ?><!-- end of #navigation -->
            
  	</div>
    <!-- END of NAVIGATION WRAPPER -->
    
    
    <!-- START of BOTTOM -->
    <div class="bottom-wrapper">
    
		    <div id="bottom" class="clearfix">
                        
            		<strong class="welcome-message">
					<?php if (!$logged) { ?>
					<?php echo $text_welcome; ?>
					<?php } else { ?>
					<?php echo $text_logged; ?>
					<?php } ?>
					</strong>
                    
                    <div class="right">
                    <?php /*?>
                    	<ul class="social-nav clearfix">
								<?php $themeSettings =  $this->config->get('bonfire'); { ?>
                    			<li><a href="<?php if(isset($themeSettings['fbLink'])){ echo $themeSettings['fbLink']; } ?>" class="fb" target="_blank">&nbsp;</a></li>
                    			<li><a href="<?php if(isset($themeSettings['twLink'])){ echo $themeSettings['twLink']; } ?>" class="tw" target="_blank">&nbsp;</a></li>
                    		
								<?php } ?>
                    	</ul><!-- end of .social-nav -->
						<?php */?>
						<?php echo $language; ?>
						<!-- end of .choose-language -->
                    	<?php echo $currency; ?>
                        <!-- end of .choose-currany -->
                        
			<?php /*?>			
                        <div id="search-bottom" class="search">
                            <?php if ($filter_name) { echo $filter_name.'<br>';?>
                            
                            <input id="filter_name" type="text" name="filter_name" value="<?php echo $filter_name; ?>" />
                            <?php } else { ?>
                            <input id="filter_name" type="text" name="filter_name" value="<?php echo $text_search; ?>" onclick="this.value = '';" onkeydown="this.style.color = '#000000';" />
                            <?php } ?>
                            <input class="button-search submit" type="submit" />
                    	</div><!-- end of .search -->
                    	<?php */?>
                    </div>
            
		    </div><!-- end of #bottom -->
            
    </div>
    <!-- END of BOTTOM -->
    
    <div class="container">
<div id="notification"></div>
