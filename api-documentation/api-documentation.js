/*global jQuery, define */
jQuery.noConflict();
jQuery(function ($) {
	"use strict";
	$("#api").jqGrid({
		url: "methods.json",
		datatype: "json",
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
