/*global require,define*/
require.config({
	//"baseUrl": ".",
	//skipDirOptimize: true,
	paths: {
		jquery: [
			"https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min"
		],
		"prettify": [
			"https://cdn.rawgit.com/google/code-prettify/master/loader/run_prettify"
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
