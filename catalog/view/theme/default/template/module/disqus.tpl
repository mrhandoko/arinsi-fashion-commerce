<div id="disqus_thread"></div>
<script>
    
    var disqus_config = function () {
        <?php if (!empty($identifier)) { ?>
        this.page.identifier = '<?php echo $identifier; ?>';
        <?php } ?>
        <?php if (!empty($url)) { ?>
        this.page.url = '<?php echo $url; ?>';
        <?php } ?>
        <?php if (!empty($title)) { ?>
        this.page.title = '<?php echo $title; ?>';
        <?php } ?>
    };

    function disqus() {
    
    $('#disqus_button').hide('fast');

    (function() {
        var d = document, s = d.createElement('script');
        
        s.src = '//<?php echo $shortname; ?>.disqus.com/embed.js';
        
        s.setAttribute('data-timestamp', +new Date());
        (d.head || d.body).appendChild(s);
    })();
    
    }
    
    <?php if ($auto_load) { ?>
      disqus();
    <?php } ?>
</script>
<?php if (!$auto_load) { ?>
<script id="dsq-count-scr" src="//<?php echo $shortname; ?>.disqus.com/count.js" async></script>
<div id="disqus_button">
  <button type="button" class="btn btn-info" onclick="disqus();"><span class="disqus-comment-count" <?php if (!empty($identifier)) { ?>data-disqus-identifier="<?php echo $identifier; ?>"<?php } ?> <?php if (!empty($url)) { ?>data-disqus-url="<?php echo $url; ?>"<?php } ?>><?php echo $text_comments; ?></span></button>
  <br><br>
</div>
<?php } ?>
<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript" rel="nofollow">comments powered by Disqus.</a></noscript>