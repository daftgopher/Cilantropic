# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
	
	checkmark_items = ['.checkmark', '.checkmark-shadow']

	$(".ingredient-list li").click ->
	  if $("input.ingredient-checkbox", this).attr("checked")
	    $("input.ingredient-checkbox", this).attr("checked", false).nextAll(checkmark_items).removeClass("big")
	  else
	    $("input.ingredient-checkbox", this).attr("checked", true).nextAll(checkmark_items).addClass("big")