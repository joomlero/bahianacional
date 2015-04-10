<div id="banner<?php echo $module; ?>" class="banner" style="margin: 0 auto; width: 800px;">
  <?php foreach ($banners as $key =>  $banner) { ?>
  <?php if ($banner['link']) { ?>
    <div style="float:left; width: <?=$banner['width']?>px;height: <?=$banner['height']?>px; margin: 10px;">
        <div onmouseover="muestraLiga('<?=$banner['link']?>',<?=$key?>);" onmouseout="ocultaLiga(<?=$key?>)">
            <a href="<?php echo $banner['link']; ?>" target="_blank">
                <img style="z-index: 1;" id="imagen-<?=$key?>" onmouseover="muestraLiga('<?=$banner['link']?>',<?=$key?>);" onmouseout="ocultaLiga(<?=$key?>)"  src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" />
                <div style="background-color: #0D2231; float:left; width: <?=$banner['width']?>px;height: <?=$banner['height']?>px;  display:none" id="liga-<?=$key?>">
                    <div style='z-index: 99999; margin:0 auto; position: relative;'><?=$banner['link']?></div>
                </div>
            </a>
        </div>
    </div>
  <?php } else { ?>
  <div style="float:left; width: <?=$banner['width']?>px;height: <?=$banner['height']?>px; margin: 50px; background: #069"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /></div>
  <?php } ?>
  <?php } ?>
</div>
<script type="text/javascript">
   function muestraLiga(liga,clave){
      // $("#imagen-"+clave).hide();
       
       $("#imagen-"+clave).fadeTo('fast',.30,'swing',function(event){
           
       });
       
//       $("#imagen-"+clave).fadeOut('fast','linear').stop();
//       $("#liga-"+clave).fadeIn('fast','linear');
//       if($("#imagen-"+clave).is(':visible')){
////            $("#imagen-"+clave).fadeOut('fast','linear').stop();
////            $("#liga-"+clave).fadeIn('fast','linear').stop;
////           $("#imagen-"+clave).hide(1000);
//            $( "#imagen-"+clave ).animate({
//           opacity: 0.25,
//           left: "+=50",
//           height: "toggle"
//           }, 600, function() {
//           // Animation complete.
//           
//
//           });
//           $("#liga-"+clave).show().stop();
//       }
   }
   function ocultaLiga(clave){
       
       $("#imagen-"+clave).fadeTo('fast',1,'swing',function (event){
           
       });
//        $("#liga-"+clave).fadeOut('fast','linear');
//        $("#imagen-"+clave).fadeIn('fast','linear');
//        if($("#liga-"+clave).is(':visible')){
////            $("#liga-"+clave).hide();
////            $("#imagen-"+clave).show(2000).stop();
// $( "#imagen-"+clave ).animate({
//           opacity: 0.25,
//           left: "+=50",
//           height: "toggle"
//           }, 5000, function() {
//           // Animation complete.
//           $("#liga-"+clave).hide().stop();
//
//           });
//        }
   }
   function muestraLiga2(liga,clave){
      // $("#imagen-"+clave).hide();
       
//       $("#imagen-"+clave).fadeTo('slow',.30,'swing',function(event){
//           
//       });
       
//       $("#imagen-"+clave).fadeOut('fast','linear').stop();
//       $("#liga-"+clave).fadeIn('fast','linear');
       if($("#imagen-"+clave).is(':visible')){
           $("#imagen-"+clave).hide(1000);
           //$("#liga-"+clave).show(2000).stop();
            $( "#imagen-"+clave ).animate({
           opacity: 0.25,
           left: "+=50",
           height: "toggle"
           }, 5000, function() {
           // Animation complete.
           $("#liga-"+clave).show().stop();

           });
//            $("#imagen-"+clave).fadeOut('fast','linear').stop();
//            $("#liga-"+clave).fadeIn('fast','linear').stop;
       }
   }
   function ocultaLiga2(clave){
       
//       $("#imagen-"+clave).fadeTo('slow',1,'swing',function(event){
//           
//          
//       });
//        $("#liga-"+clave).fadeOut('fast','linear');
//        $("#imagen-"+clave).fadeIn('fast','linear');
        if($("#liga-"+clave).is(':visible')){
            $("#liga-"+clave).hide(1000);
            $("#imagen-"+clave).show(2000).stop();
        }
   }
//</script>