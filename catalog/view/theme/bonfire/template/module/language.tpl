<?php if (count($languages) > 1) { ?>
<form class="choose-currancy" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
<fieldset>
    <?php 
            $contadorLenguajes = count($languages);
	    $contadorCiclos = 1;
	    $speradorLenguajes = '';
	    if($contadorLenguajes > 1){
		$speradorLenguajes = '  /  ';
	    } 
            $speradorLenguaje = '  /  ';
	    foreach ($languages as $language) { 
                if($contadorCiclos == $contadorLenguajes){
		    $speradorLenguajes = '';
		}
		?>
                <span style="cursor: pointer;" class="currency" id="<?php echo $language['code']; ?>" onmouseover="enciende(this.id);" onmouseout="apaga(this.id)" onclick="$('#language_code').val(this.id);$(this).parent().parent().submit()"><?php echo $language['name']; ?></span><span class="currency" style="margin-left: 5px; margin-right: 5px; "><?php echo $speradorLenguajes;?></span>
	<?php $contadorCiclos++;} ?> 
    
    <?php /* ?>
<select id="languages" name="languages" onChange="$('input[name=\'language_code\']').attr('value', $('#languages option:selected').val()
).submit(); $(this).parent().parent().submit();" >
    <?php foreach ($languages as $language) { ?>
		<?php if ($language['code'] == $language_code) { ?>
			<option class="option" selected value="<?php echo $language['code']; ?>"><?php echo $language['name']; ?></option>
		<?php }else{  ?>
			<option class="option" value="<?php echo $language['code']; ?>"><?php echo $language['name']; ?></option>
		<?php } ?>
    <?php } ?>
	</select>
    <?php */ ?>
    <input type="hidden" name="language_code" id="language_code" value="" />
    <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</fieldset>
</form>
<?php } ?>
