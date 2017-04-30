<?php
// Heading
$_['heading_title']    = 'Disqus';

// Text
$_['text_module']      = 'Modules';
$_['text_success']     = 'Success: You have modified Disqus module!';
$_['text_edit']        = 'Edit Disqus Module';

// Entry
$_['entry_name']       = 'Module Name';
$_['entry_shortname']  = 'Shortname';
$_['entry_identifier'] = 'Identifier';
$_['entry_url']        = 'Url';
$_['entry_title']      = 'Title';
$_['entry_auto_load']  = 'Auto load comments';
$_['entry_auto_config'] = 'Auto configuration';
$_['entry_status']     = 'Status';

// Error
$_['error_permission'] = 'Warning: You do not have permission to modify Disqus module!';
$_['error_name']       = 'Module Name must be between 3 and 64 characters!';
$_['error_shortname']  = 'Short Name is needed!';

//Help
$_['help_auto_config'] = 'You can make your own settings for disqus in this module if you disable the auto configuration.';
$_['help_auto_load']   = 'If enabled then comments loading will start automatically. If disabled then visitors can load Disqus comments only on demand.';
$_['help_shortname']   = "Tells the Disqus service your forum's shortname, which is the unique identifier for your website as registered on Disqus. If undefined, the Disqus embed will not load.";
$_['help_identifier']  = "Tells the Disqus service how to identify the current page. When the Disqus embed is loaded, the identifier is used to look up the correct thread. If this.page.identifier is undefined, the page's URL will be used. The URL can be unreliable, such as when renaming an article slug or changing domains, so we recommend using your own unique way of identifying a thread.";
$_['help_url']         = "Tells the Disqus service the URL of the current page. If undefined, Disqus will take the window.location.href. This URL is used to look up or create a thread if this.page.identifier is undefined. In addition, this URL is always saved when a thread is being created so that Disqus knows what page a thread belongs to. While the window.location.href is used in absence of this.page.url, we highly recommend defining this variable. If a user visits your page at the URL http://example.com/helloworld.html?123, Disqus may in fact load a different thread than if the user came from http://example.com/helloworld.html. To make sure the right thread is always displayed, you should define on your page, using an absolute URL, this.page.url = 'http://example.com/helloworld.html'";
$_['help_title']       = "Tells the Disqus service the title of the current page. This is used when creating the thread on Disqus for the first time. If undefined, Disqus will use the <title> attribute of the page. If that attribute could not be used, Disqus will use the URL of the page.";