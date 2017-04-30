<?php
    echo $header;
    global $config;
	$template = $config->get('config_template');
	
	$str = strip_tags($content_block1);
	$str = preg_replace('/\s(?=\s)/', '', $str);
	$str = preg_replace('/[\n\r\t]/', '', $str);
	$str = str_replace(' ', '', $str);
	$str = trim($str, "\xC2\xA0\n");
			
?>
<?php $str = trim($content_top); ?>
<?php 
if (trim($content_top)) : ?>
<section id="yt_spotlight1">
	<div id="yt_header_right">
		<div class="slider-container " > 
			<?php echo $content_top; ?>
		</div>
	</div>
</section>
<?php endif; ?>
<?php if (trim($content_block1)) : ?>
<section id="yt_spotlight2">
    <div class="container">
        <div class="row">
			<div class="col-sm-12">
             <?php echo $content_block1 ?>
			</div>
        </div>
    </div> 
</section>
<?php endif; ?>
<div class="container">
     <div class="row">
        <?php if ($column_left && $column_right) { ?>
        <?php $class = ' col-sm-4 col-xs-12'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-lg-9 col-sm-8 col-xs-12'; ?>
        <?php } else { ?>
        <?php $class = 'col-xs-12'; ?>
        <?php } ?>
        
        <?php if ($column_left) { ?>
        
              <?php echo $column_left; ?>
      
       <?php } ?>
        <div id="content" class="<?php echo $class; ?>">
            <?php echo $content_block2 ?>
           
			
        </div>
     
        <?php if ($column_right) { ?>
       
              <?php echo $column_right; ?>
       
       <?php } ?>
     </div>
</div>
<?php if (trim($content_block3)) : ?>
<section id="yt_spotlight3">
    <div class="container">
        <div class="row">
			<div class="col-sm-12">
             <?php echo $content_block3 ?>
			</div>
        </div>
    </div> 
</section>
<?php endif; ?>


<?php echo $footer; ?>