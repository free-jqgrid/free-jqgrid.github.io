require.config({
	//"baseUrl": ".",
	//skipDirOptimize: true,
	paths: {
		"free-jqgrid": [
			"https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.13.1/js/jquery.jqgrid.min"
		],
		"free-jqgrid-js": [
			"https://cdn.jsdelivr.net/free-jqgrid/4.13.1/js"
		],
		"free-jqgrid-js-min": [
			"https://cdn.jsdelivr.net/free-jqgrid/4.13.1/js/min"
		],
		jquery: [
			"https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min"
		],
		"jquery-ui": [
			"https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min"
		],
		"jquery-ui-i18n": [
			"https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.4/i18n/jquery-ui-i18n"
		],
		"prettify": [
			"https://cdnjs.cloudflare.com/ajax/libs/prettify/r298/run_prettify.min"
		],
		"prettify-css": [
			"https://cdnjs.cloudflare.com/ajax/libs/prettify/r298/lang-css.min"
		]
	}
});

define(
[
	"jquery",
	"prettify",
	"prettify-css",
	//"jquery-ui",
	//"free-jqgrid"
	//"free-jqgrid-js/i18n/grid.locale-de.min",
	//"free-jqgrid-js-min/grid.base",
	//"free-jqgrid-js-min/jquery.fmatter",
	//"free-jqgrid-js-min/jqdnr",
	//"free-jqgrid-js-min/jqmodal",
	//"free-jqgrid-js-min/grid.common",
	//"free-jqgrid-js-min/grid.custom"
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
