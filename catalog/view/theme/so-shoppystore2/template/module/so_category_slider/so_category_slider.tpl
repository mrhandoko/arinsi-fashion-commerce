<?php
if (!empty($list)) {
$btn_prev = '&#139;';
$btn_next = '&#155;';
$class_respl = 'preset01-4 preset02-3 preset03-2 preset04-2 preset05-1' ;
$count_item = count($list[0]['product']);
if($list[0]['child_cat']){
	$class_respon = 'slider';
}else{
	$class_respon = 'slider-full';
}
if (!empty($list[0]['child_cat'])) {
	$class_item_full = 'show';
} else{
	$class_item_full = 'show-image';
}

$icon_class=strstr($class_suffix,'fa-');
$class_suffix_after=str_replace($icon_class, '', $class_suffix);

?>

<div id="<?php echo $tag_id; ?>" class="container-slider module <?php echo $class_suffix_after; ?>">
	<?php if($disp_title_module) {?>
		<h3 class="modtitle">
		<i class="fa <?php echo $icon_class; ?>"></i>
		<?php echo $head_name; ?></h3>
	<?php } ?>
	<div class="group-button">
		<div class="prev_next">
			
		</div>
	</div>
	<?php if (!empty($list[0]['child_cat'])) { ?>
	<ul class="list-sub-cat">
		
		<?php foreach ($list[0]['child_cat'] as $cat_tree) { ?>
		<?php 
			$title_trim= trim($cat_tree['title']);
			$title_array = explode(" ", $title_trim);
			
		?>
		<li class="item-cate">
			
			<a href="<?php echo $cat_tree['link'];?>"
			   title="<?php echo $cat_tree['title']; ?>" target="<?php echo $item_link_target ?>" >
			   <img alt="<?php echo $cat_tree['title'];?>" src="<?php echo $cat_tree['image'];?>">
				<span class="title-sub-cate"><?php echo $title_array[0];?></span>
			</a>
		</li>
		<?php } ?>
	</ul>
	<?php } ?>
	<?php } else{ ?>
	<p style="margin: 20px; text-align: center">Has no content to show!</p>
	<?php } ?>
	<?php if ($cat_title_display == 1) {?>
	<div class="page-top">
		<div class="page-title-categoryslider">
			<span>
				<?php {
				  echo $list[0]['title'];
				 } ?>
			</span>
		</div>
	</div>
	 <?php } ?>
	
	<div class="categoryslider-content <?php echo $class_item_full; ?>  <?php echo $class_respl; ?>">
		<?php if ($cat_image_display == 1) {
		?>
		<div class="item-cat-image">
			<a href="<?php echo $list[0]['link']; ?>" title="<?php echo $list[0]['title']; ?>" target="<?php echo $item_link_target ?>" >
				<img class="categories-loadimage" title="<?php echo $list[0]['title']; ?>" alt="<?php echo $list[0]['title']; ?>"
					 src="<?php echo $list[0]['image']; ?>"/>
			</a>
		</div>
		<?php } ?>
		<?php if(!empty($list[0]['product'])) { ?>
		<div class="slider so-category-slider not-js cols-6" data-effect="<?php echo $effect; ?>" >
			<?php foreach($list[0]['product'] as $product) { ?>
			<div class="item ">
				<div class="item-inner product-thumb transition">
					<?php if($product_image){ ?>
					<div class="image">
						<?php if ($product['special']) : ?>
						<span class="label label-sale"><?php echo (isset($sale_text) ? $sale_text : 'SALE'); ?></span>
						<?php endif; ?>
						<a class="lt-image" href="<?php echo $product['href'] ?>" target="<?php echo $item_link_target ?>" title="<?php echo $product['name'] ?>">
							<img src="<?php echo $product['thumb']?>" alt="<?php echo $product['name'] ?>">
						</a>
						<?php if (!isset($quick_status) || $quick_status != 0) : ?>
						<!--full quick view block-->
						<?php $our_url = $this->registry->get('url'); ?>
						<a class="quickview iframe-link hidden-md hidden-sm hidden-xs" data-fancybox-type="iframe"  href="<?php echo $our_url->link('product/quickview','product_id='.$product['product_id']);?>">  <i class="fa fa-search"></i></a>
					   <!--end full quick view block-->
					   <?php endif; ?>
					</div>
					<?php }?>
					<div class="caption">
						<?php if ($display_title == 1) { ?>
						<h4 class="item-title">
							<a href="<?php echo $product['href'] ?>" title="<?php echo $product['name'] ?>" target="<?php echo $item_link_target ?>">
								<?php  echo $product['name'];?>
							</a>
						</h4>
						<?php } ?>
						<?php if ($product['rating']) { ?>
						<div class="rating">
							<?php for ($i = 1; $i <= 5; $i++) { ?>
							<?php if ($product['rating'] < $i) { ?>
							<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
							<?php } else { ?>
							<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
							<?php } ?>
							<?php } ?>
						</div>
						<?php }else{ ?>
						<div class="rating">
							<?php for ($j = 1; $j <= 5; $j++) { ?>
							<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
							<?php } ?>
						</div>
						<?php } ?>
						<?php if ($display_description == 1) { ?>
						<p class="item-des"><?php echo  html_entity_decode($product['description']); ?></p>
						<?php }
							?>
						<?php if ($product['price'] && $display_price) { ?>
						<p class="price">
							<?php if (!$product['special']) { ?>
							<?php echo $product['price']; ?>
							<?php } else { ?>
							<span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
							<?php } ?>
							<?php if ($product['tax']) { ?>
							<span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
							<?php } ?>
						</p>
						<?php } ?>
					</div>
					<div class="button-group">
						<?php if($display_wishlist) { ?>
						<button type="button" class="wishlist" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart-o"></i></button>
						<?php } ?>
						<?php if($display_addtocart) { ?>
						<button type="button" class="addToCart" onclick="cart.add('<?php echo $product['product_id']; ?>');"><span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
						<?php } ?>
						
						<?php if($display_compare) { ?>
						<button type="button" class="compare" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-refresh"></i></button>
						<?php } ?>
						
					</div>
				</div>
			</div>
			<?php } ?>
		</div>
		
	</div>
</div>


<?php
} else {
    echo '<p style="margin: 10px">Has no content to show!</p>';
} ?>
<script type="text/javascript">
	//<![CDATA[
	jQuery(document).ready(function ($) {
		;(function (element) {
			var id = $("#<?php echo $tag_id; ?>");
			var $element = $(element),
					$extraslider = $(".slider", $element),
					_delay = <?php echo $delay; ?>,
			_duration = <?php echo $duration; ?>,
			_effect = '<?php echo $effect; ?>',
					total_item = <?php echo $count_item ; ?>;

			$extraslider.on("initialized.owl.carousel2", function () {
				var $item_active = $(".owl2-item.active", $element);
				if ($item_active.length > 1 && _effect != "none") {
					_getAnimate($item_active);
				}
				else {
					var $item = $(".owl2-item", $element);
					$item.css({"opacity": 1, "filter": "alpha(opacity = 100)"});
				}
				var $navpage = $(".prev_next", id);
				$(".owl2-controls", id).insertAfter($navpage);
				$(".owl2-dot", id).css("display", "none");

			});

			$extraslider.owlCarousel2({
			margin: 0,
			slideBy: <?php echo $slideBy;?>,
			autoplay: <?php echo $autoplay;?>,
			autoplayHoverPause: <?php echo $pausehover ;?>,
			autoplayTimeout: <?php echo $autoplay_timeout; ?>,
			autoplaySpeed: <?php echo $autoplaySpeed; ?>,
			startPosition: <?php echo $startPosition; ?>,
			mouseDrag: <?php echo $mouseDrag;?>,
			touchDrag: <?php echo $touchDrag; ?>,
			autoWidth: false,
					responsive: {
				0:{	items: <?php echo $nb_column4;?>,
					nav: total_item <= <?php echo $nb_column4;?> ? false : ((<?php echo $nav ; ?>) ? true: false),
				},
				480:{ items: <?php echo $nb_column3;?>,
					nav: total_item <= <?php echo $nb_column3;?> ? false : ((<?php echo $nav ; ?>) ? true: false),
				},
				768:{ items: <?php echo $nb_column2;?>,
					nav: total_item <= <?php echo $nb_column2;?> ? false : ((<?php echo $nav ; ?>) ? true: false),
				},
				992:{ items: <?php echo $nb_column1;?>,
					nav: total_item <= <?php echo $nb_column1;?> ? false : ((<?php echo $nav ; ?>) ? true: false),
				},
				1200:{ items: <?php echo $nb_column0;?>,
					nav: total_item <= <?php echo $nb_column0;?> ? false : ((<?php echo $nav ; ?>) ? true: false),
				}
			},

			nav: <?php echo $nav; ?>,
			loop: true,
					navSpeed: <?php echo $navSpeed; ?>,
			navText: ["<?php echo $btn_prev; ?>", "<?php echo $btn_next; ?>"],
					navClass: ["owl2-prev", "owl2-next"]

		});

		$extraslider.on("translate.owl.carousel2", function (e) {

			var $item_active = $(".owl2-item.active", $element);
			_UngetAnimate($item_active);
			_getAnimate($item_active);
		});

		$extraslider.on("translated.owl.carousel2", function (e) {


			var $item_active = $(".owl2-item.active", $element);
			var $item = $(".owl2-item", $element);

			_UngetAnimate($item);

			if ($item_active.length > 1 && _effect != "none") {
				_getAnimate($item_active);
			} else {

				$item.css({"opacity": 1, "filter": "alpha(opacity = 100)"});

			}
		});

		function _getAnimate($el) {
			if (_effect == "none") return;
			//if ($.browser.msie && parseInt($.browser.version, 10) <= 9) return;
			$extraslider.removeClass("extra-animate");
			$el.each(function (i) {
				var $_el = $(this);
				$(this).css({
					"-webkit-animation": _effect + " " + _duration + "ms ease both",
					"-moz-animation": _effect + " " + _duration + "ms ease both",
					"-o-animation": _effect + " " + _duration + "ms ease both",
					"animation": _effect + " " + _duration + "ms ease both",
					"-webkit-animation-delay": +i * _delay + "ms",
					"-moz-animation-delay": +i * _delay + "ms",
					"-o-animation-delay": +i * _delay + "ms",
					"animation-delay": +i * _delay + "ms",
					"opacity": 1
				}).animate({
					opacity: 1
				});

				if (i == $el.size() - 1) {
					$extraslider.addClass("extra-animate");
				}
			});
		}

		function _UngetAnimate($el) {
			$el.each(function (i) {
				$(this).css({
					"animation": "",
					"-webkit-animation": "",
					"-moz-animation": "",
					"-o-animation": "",
					"opacity": 0
				});
			});
		}

	})("#<?php echo $tag_id ; ?>");
	});
	//]]>
</script>

