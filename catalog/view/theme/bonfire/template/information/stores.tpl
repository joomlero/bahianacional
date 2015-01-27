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
    <div style="margin: 0 auto 0 auto; margin-left: 40px; height: auto; text-align: justify;">
        <?php echo $description;?>
    </div><!-- end of #contact -->
  <?php //echo $content_bottom; ?>
</div>
<?php echo $footer; ?>