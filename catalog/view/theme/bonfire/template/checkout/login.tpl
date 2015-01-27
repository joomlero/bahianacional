<div class="left">
  <h3><span><?php echo $text_new_customer; ?></span></h3>
  <p class="msg"><?php echo $text_checkout; ?></p>
  <label for="register">
    <?php if ($account == 'register') { ?>
    <input type="radio" name="account" value="register" id="register" checked="checked" />
    <?php } else { ?>
    <input type="radio" name="account" value="register" id="register" />
    <?php } ?>
    <b><?php echo $text_register; ?></b></label>
  <br />
  <?php if ($guest_checkout) { ?>
  <label for="guest">
    <?php if ($account == 'guest') { ?>
    <input type="radio" name="account" value="guest" id="guest" checked="checked" />
    <?php } else { ?>
    <input type="radio" name="account" value="guest" id="guest" />
    <?php } ?>
    <b><?php echo $text_guest; ?></b></label>
  <br />
  <?php } ?>
  <br />
  <p><?php echo $text_register_account; ?></p>
  <input type="button" value="<?php echo $button_continue; ?>" id="button-account" class="button cont" />
  <br />
  <br />
</div>
<div id="login" class="right">
  <h3><span><?php echo $text_returning_customer; ?></span></h3>
  <p class="msg"><?php echo $text_i_am_returning_customer; ?></p>
  <b><label><?php echo $entry_email; ?></label></b><br />
  <input type="text" name="email" value="" class="text"/>
  <br />
  <br />
  <b><label><?php echo $entry_password; ?></label></b><br />
  <input type="password" name="password" value="" class="text"/>
  <br />
  <a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a><br />
  <br />
  <input type="button" value="<?php echo $button_login; ?>" id="button-login" class="button cont" /><br />
  <br />
</div>