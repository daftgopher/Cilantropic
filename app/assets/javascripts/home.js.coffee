# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->

	$(window).scroll ->

		scrolled = $(window).scrollTop()

		heading_assets = ['.heading-overlay','.fix-utility-nav']

		if scrolled > 110
			$('div.main-header-wrap h1').addClass('fixed')
			$('div.main-header-wrap h2').addClass('fix-position')
			$('.heading-overlay').fadeIn(400);
			$('.fix-utility-nav').fadeIn(600);
		else
			$('.heading-overlay').fadeOut(100);
			$('.fix-utility-nav').fadeOut(100);
			$('div.main-header-wrap h1').removeClass('fixed')
			$('div.main-header-wrap h1').removeClass('fix-position')
			
checkmark_items = ['.checkmark', '.checkmark-shadow']

$(checkmark_items).removeClass("big")

$(".ingredient-list li").click ->
  if $("input.ingredient-checkbox", this).attr("checked")
    $("input.ingredient-checkbox", this).attr("checked", false).nextAll(checkmark_items).removeClass("big")
  else
    $("input.ingredient-checkbox", this).attr("checked", true).nextAll(checkmark_items).addClass("big")