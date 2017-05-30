/*global require,define*/
require.config({
	paths: {
		"free-jqgrid": [
			"https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.14.1/modules/min/"
		],
		"free-jqgrid-plugins": [
			"https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.14.1/plugins/min"
		],
		jquery: [
			"https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min"
		],
		"jquery-ui": [
			"https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min"
		],
		"prettify": [
			"https://cdn.rawgit.com/google/code-prettify/master/loader/run_prettify"
		]
	}
});

define([
	"jquery",
	"prettify",
	"jquery-ui",
	"free-jqgrid/grid.custom"
], function($) {
	$(function () {
		"use strict";
		$("#api").jqGrid({
			url: "methods.json",
			datatype: "json",
			colModel: [
				{ name: "base", hidden: true },
				{ name: "fullName", width: 282,
					jsonmap: function (obj) {
						return obj.base + "." + obj.name;
					} },
				{ name: "name", width: 171,
					cellattr: function (rowId, cellValue, rawObject, cm, rdata) {
						return "title='" + rdata.base + "." + rdata.name + "'";
					} },
				{ name: "methodType", width: 89, stype: "select",
					searchoptions: {
						sopt: ["eq", "ne"],
						value: ":Any;standard:standard;static:static;static-this-grid:static-this-grid"
					} },
				{ name: "category", width: 196 }
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
