/*global jQuery, define */
jQuery.noConflict();
jQuery(function ($) {
	"use strict";
	$("#showImages").click(function() {
		var show = $(this).is(":checked");
		$(".imageExample")[show ? "show": "hide"]();
		$(".showImage").prop("checked", show);
	});
	$(".showImage").click(function() {
		$(this).closest("li").find(".imageExample")[$(this).is(":checked") ? "show": "hide"]();
	});
});
