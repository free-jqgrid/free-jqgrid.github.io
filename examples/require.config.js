/*global require,define*/
require.config({
	//"baseUrl": ".",
	//skipDirOptimize: true,
	paths: {
		jquery: [
			"https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.3/jquery.min"
		],
		"prettify": [
			"https://cdnjs.cloudflare.com/ajax/libs/prettify/r298/run_prettify.min"
		]
	}
});

define([
	"jquery",
	"prettify"
], function($) {
	$(function () {
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
});
