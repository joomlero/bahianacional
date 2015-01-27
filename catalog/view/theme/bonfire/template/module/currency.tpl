<?php if (count($currencies) > 1) { ?>
<form class="choose-currancy" style="margin-right: -10px;" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
    <fieldset>
	<?php 
	    $contadorMonedas = count($currencies);
	    $contadorCiclos = 1;
	    $speradorMonedas = '';
	    if($contadorMonedas > 1){
		$speradorMonedas = '  /  ';
	    } 
	    foreach ($currencies as $currency) { 
		if($contadorCiclos == $contadorMonedas){
		    $speradorMonedas = '';
		}
		?>
		<span style="cursor: pointer;" class="currency" id="<?php echo $currency['code']; ?>" onclick="$('#currency_code').val(this.id).submit();$(this).parent().parent().submit()" onmouseover="enciende(this.id);" onmouseout="apaga(this.id)"><?php echo $currency['title']; ?></span><span class="currency" style="margin-left: 5px; margin-right: 5px; "><?php echo $speradorMonedas;?></span>
		<!--<span class="currency" id="<?php //echo $currency['code']; ?>" onclick="$('input[name=\'currency_code\']').val($(this).id()).submit(); alert($('input[name=\'currency_code\']').val()), $(this).parent().parent().submit();"><?php echo $currency['title']; ?></span><span class="currency" style="margin-left: 5px; margin-right: 5px; "><?php //echo $speradorMonedas;?></span> -->
	<?php $contadorCiclos++; } ?>    
	
        
           <?php /*?> 
        <select id="currencies" name="currencies" onChange="$('input[name=\'currency_code\']').attr('value', $('#currencies option:selected').val()).submit(); $(this).parent().parent().submit();" >
        <?php foreach ($currencies as $currency) { ?>
            	<?php if ($currency['code'] == $currency_code) { ?>
                <option class="option" selected value="<?php echo $currency['code']; ?>"><?php echo $currency['title']; ?></option>
            	<?php }else{  ?>
                <option class="option" value="<?php echo $currency['code']; ?>"><?php echo $currency['title']; ?></option>
                <?php } ?>
            <?php } ?>
        </select>
        <?php */?> 
	<input type="hidden" name="currency_code" id="currency_code" value="" />
	<input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
    </fieldset>
</form>
<?php } ?>