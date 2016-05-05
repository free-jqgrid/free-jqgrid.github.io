require.config({
	//"baseUrl": ".",
	//skipDirOptimize: true,
	paths: {
		"free-jqgrid": [
			"https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.13.2/js/jquery.jqgrid.min"
		],
		"free-jqgrid-js": [
			"https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.13.2/js"
		],
		"free-jqgrid-js-min": [
			"https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.13.2/js/min"
		],
		jquery: [
			"https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.3/jquery.min"
		],
		"jquery-ui": [
			"https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min"
		],
		"prettify": [
			"https://cdnjs.cloudflare.com/ajax/libs/prettify/r298/run_prettify.min"
		]
	}
});

define(
[
	"jquery",
	"prettify",
	"jquery-ui",
	"free-jqgrid"
	//"free-jqgrid-js-min/grid.base",
	//"free-jqgrid-js-min/jquery.fmatter",
	//"free-jqgrid-js-min/jqdnr",
	//"free-jqgrid-js-min/jqmodal",
	//"free-jqgrid-js-min/grid.common",
	//"free-jqgrid-js-min/grid.custom"
], function($) {
    $(function () {
		"use strict";
		$("#api").jqGrid({
			url: "methods.json",
			datatype: "json",
			postData: "",
			colModel: [
				{ name: "base", hidden: true },
				{ name: "fullName", width: 300,
					jsonmap: function (obj) {
						return obj.base + "." + obj.name;
					} },
				{ name: "name",
					cellattr: function (rowId, cellValue, rawObject, cm, rdata) {
						return "title='" + rdata.base + "." + rdata.name + "'";
					} },
				{ name: "methodType", stype: "select",
					searchoptions: {
						sopt: ["eq", "ne"],
						value: ":Any;standard:standard;static:static;static-this-grid:static-this-grid"
					} },
				{ name: "category", width: 300 }
			],
			rowNum: 10,
			pager: true,
			cmTemplate: { autoResizable: true, editable: true },
			iconSet: "fontAwesome",
			autoResizing: { compact: true },
			rowList: [5, 10, 20, "10000:All"],
			viewrecords: true,
			sortable: true,
			loadonce: true,
			sortname: "name",
			forceClientSorting: true
		}).jqGrid("filterToolbar");
    });
});