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
	//"jquery",
	"prettify",
	"prettify-css"//,
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
	"use strict";
    /*$(function () {
		"use strict";
		$("#grid").jqGrid({
			colModel: [
				{ name: "firstName" },
				{ name: "lastName" }
			],
			data: [
				{ id: 10, firstName: "Angela", lastName: "Merkel" },
				{ id: 20, firstName: "Vladimir", lastName: "Putin" },
				{ id: 30, firstName: "David", lastName: "Cameron" },
				{ id: 40, firstName: "Barack", lastName: "Obama" },
				{ id: 50, firstName: "François", lastName: "Hollande" }
			]
		});
		$("#grid1").jqGrid({
			colModel: [
				{ name: "name", label: "Client", width: 53 },
				{ name: "invdate", label: "Date", width: 75, align: "center", sorttype: "date",
					formatter: "date", formatoptions: { newformat: "d-M-Y" } },
				{ name: "amount", label: "Amount", width: 65, template: "number" },
				{ name: "tax", label: "Tax", width: 41, template: "number" },
				{ name: "total", label: "Total", width: 51, template: "number" },
				{ name: "closed", label: "Closed", width: 59, template: "booleanCheckboxFa", firstsortorder: "desc" },
				{ name: "ship_via", label: "Shipped via", width: 87, align: "center", formatter: "select",
					formatoptions: { value: "FE:FedEx;TN:TNT;DH:DHL", defaultValue: "DH" } }
			],
			data: [
				{ id: "10",  invdate: "2015-10-01", name: "test",   amount: "" },
				{ id: "20",  invdate: "2015-09-01", name: "test2",  amount: "300.00", tax: "20.00", closed: false, ship_via: "DH", total: "320.00" },
				{ id: "30",  invdate: "2015-09-01", name: "test3",  amount: "400.00", tax: "30.00", closed: false, ship_via: "FE", total: "430.00" },
				{ id: "40",  invdate: "2015-10-04", name: "test4",  amount: "200.00", tax: "10.00", closed: true,  ship_via: "TN", total: "210.00" },
				{ id: "50",  invdate: "2015-10-31", name: "test5",  amount: "300.00", tax: "20.00", closed: false, ship_via: "FE", total: "320.00" },
				{ id: "60",  invdate: "2015-09-06", name: "test6",  amount: "400.00", tax: "30.00", closed: false, ship_via: "FE", total: "430.00" },
				{ id: "70",  invdate: "2015-10-04", name: "test7",  amount: "200.00", tax: "10.00", closed: true,  ship_via: "TN", total: "210.00" },
				{ id: "80",  invdate: "2015-10-03", name: "test8",  amount: "300.00", tax: "20.00", closed: false, ship_via: "FE", total: "320.00" },
				{ id: "90",  invdate: "2015-09-01", name: "test9",  amount: "400.00", tax: "30.00", closed: false, ship_via: "TN", total: "430.00" },
				{ id: "100", invdate: "2015-09-08", name: "test10", amount: "500.00", tax: "30.00", closed: true,  ship_via: "TN", total: "530.00" },
				{ id: "110", invdate: "2015-09-08", name: "test11", amount: "500.00", tax: "30.00", closed: false, ship_via: "FE", total: "530.00" },
				{ id: "120", invdate: "2015-09-10", name: "test12", amount: "500.00", tax: "30.00", closed: false, ship_via: "FE", total: "530.00" }
			],
			//cmTemplate: { autoResizable: true, align: "center" },
			//autoResizing: { compact: true },
			//hidegrid: false,
			iconSet: "fontAwesome",
			idPrefix: "g1_",
			rownumbers: true,
			sortname: "invdate",
			sortorder: "desc",
			caption: "The grid, which uses predefined formatters and templates"
		});
		$("#grid2").jqGrid({
			colModel: [
				{ name: "name", label: "Client", width: 53 },
				{ name: "invdate", label: "Date", width: 75, align: "center", sorttype: "date",
					formatter: "date", formatoptions: { newformat: "d-M-Y" } },
				{ name: "amount", label: "Amount", width: 65, template: "number" },
				{ name: "tax", label: "Tax", width: 41, template: "number" },
				{ name: "total", label: "Total", width: 51, template: "number" },
				{ name: "closed", label: "Closed", width: 59, template: "booleanCheckboxFa", firstsortorder: "desc" },
				{ name: "ship_via", label: "Shipped via", width: 87, align: "center", formatter: "select",
					formatoptions: { value: "FE:FedEx;TN:TNT;DH:DHL", defaultValue: "DH" } }
			],
			data: [
				{ id: "10",  invdate: "2015-10-01", name: "test",   amount: "" },
				{ id: "20",  invdate: "2015-09-01", name: "test2",  amount: "300.00", tax: "20.00", closed: false, ship_via: "DH", total: "320.00" },
				{ id: "30",  invdate: "2015-09-01", name: "test3",  amount: "400.00", tax: "30.00", closed: false, ship_via: "FE", total: "430.00" },
				{ id: "40",  invdate: "2015-10-04", name: "test4",  amount: "200.00", tax: "10.00", closed: true,  ship_via: "TN", total: "210.00" },
				{ id: "50",  invdate: "2015-10-31", name: "test5",  amount: "300.00", tax: "20.00", closed: false, ship_via: "FE", total: "320.00" },
				{ id: "60",  invdate: "2015-09-06", name: "test6",  amount: "400.00", tax: "30.00", closed: false, ship_via: "FE", total: "430.00" },
				{ id: "70",  invdate: "2015-10-04", name: "test7",  amount: "200.00", tax: "10.00", closed: true,  ship_via: "TN", total: "210.00" },
				{ id: "80",  invdate: "2015-10-03", name: "test8",  amount: "300.00", tax: "20.00", closed: false, ship_via: "FE", total: "320.00" },
				{ id: "90",  invdate: "2015-09-01", name: "test9",  amount: "400.00", tax: "30.00", closed: false, ship_via: "TN", total: "430.00" },
				{ id: "100", invdate: "2015-09-08", name: "test10", amount: "500.00", tax: "30.00", closed: true,  ship_via: "TN", total: "530.00" },
				{ id: "110", invdate: "2015-09-08", name: "test11", amount: "500.00", tax: "30.00", closed: false, ship_via: "FE", total: "530.00" },
				{ id: "120", invdate: "2015-09-10", name: "test12", amount: "500.00", tax: "30.00", closed: false, ship_via: "FE", total: "530.00" }
			],
			//cmTemplate: { autoResizable: true, align: "center" },
			//autoResizing: { compact: true },
			//hidegrid: false,
			iconSet: "fontAwesome",
			idPrefix: "g2_",
			rownumbers: true,
			sortname: "invdate",
			sortorder: "desc",
			toppager: true,
			pager: true,
			rowNum: 5,
			caption: "The grid demonstrates formatters, templates and the pager"
		});
		$("#grid3").jqGrid({
			colModel: [
				{ name: "name", label: "Client", width: 53 },
				{ name: "invdate", label: "Date", width: 75, align: "center", sorttype: "date",
					formatter: "date", formatoptions: { newformat: "d-M-Y" } },
				{ name: "amount", label: "Amount", width: 65, template: "number" },
				{ name: "tax", label: "Tax", width: 41, template: "number" },
				{ name: "total", label: "Total", width: 51, template: "number" },
				{ name: "closed", label: "Closed", width: 59, template: "booleanCheckboxFa", firstsortorder: "desc" },
				{ name: "ship_via", label: "Shipped via", width: 87, align: "center", formatter: "select",
					formatoptions: { value: "FE:FedEx;TN:TNT;DH:DHL", defaultValue: "DH" } }
			],
			data: [
				{ id: "10",  invdate: "2015-10-01", name: "test",   amount: "" },
				{ id: "20",  invdate: "2015-09-01", name: "test2",  amount: "300.00", tax: "20.00", closed: false, ship_via: "DH", total: "320.00" },
				{ id: "30",  invdate: "2015-09-01", name: "test3",  amount: "400.00", tax: "30.00", closed: false, ship_via: "FE", total: "430.00" },
				{ id: "40",  invdate: "2015-10-04", name: "test4",  amount: "200.00", tax: "10.00", closed: true,  ship_via: "TN", total: "210.00" },
				{ id: "50",  invdate: "2015-10-31", name: "test5",  amount: "300.00", tax: "20.00", closed: false, ship_via: "FE", total: "320.00" },
				{ id: "60",  invdate: "2015-09-06", name: "test6",  amount: "400.00", tax: "30.00", closed: false, ship_via: "FE", total: "430.00" },
				{ id: "70",  invdate: "2015-10-04", name: "test7",  amount: "200.00", tax: "10.00", closed: true,  ship_via: "TN", total: "210.00" },
				{ id: "80",  invdate: "2015-10-03", name: "test8",  amount: "300.00", tax: "20.00", closed: false, ship_via: "FE", total: "320.00" },
				{ id: "90",  invdate: "2015-09-01", name: "test9",  amount: "400.00", tax: "30.00", closed: false, ship_via: "TN", total: "430.00" },
				{ id: "100", invdate: "2015-09-08", name: "test10", amount: "500.00", tax: "30.00", closed: true,  ship_via: "TN", total: "530.00" },
				{ id: "110", invdate: "2015-09-08", name: "test11", amount: "500.00", tax: "30.00", closed: false, ship_via: "FE", total: "530.00" },
				{ id: "120", invdate: "2015-09-10", name: "test12", amount: "500.00", tax: "30.00", closed: false, ship_via: "FE", total: "530.00" }
			],
			//cmTemplate: { autoResizable: true, align: "center" },
			//autoResizing: { compact: true },
			//hidegrid: false,
			iconSet: "fontAwesome",
			idPrefix: "g3_",
			rownumbers: true,
			sortname: "invdate",
			sortorder: "desc",
			toppager: true,
			pager: true,
			rowNum: 5,
			page: 2,
			viewrecords: true,
			caption: "The grid demonstrates formatters, templates and the pager"
		});
		$("#grid4").jqGrid({
			colModel: [
				{ name: "name", label: "Client", width: 53 },
				{ name: "invdate", label: "Date", width: 75, align: "center", sorttype: "date",
					formatter: "date", formatoptions: { newformat: "d-M-Y" } },
				{ name: "amount", label: "Amount", width: 65, template: "number" },
				{ name: "tax", label: "Tax", width: 41, template: "number" },
				{ name: "total", label: "Total", width: 51, template: "number" },
				{ name: "closed", label: "Closed", width: 59, template: "booleanCheckboxFa", firstsortorder: "desc" },
				{ name: "ship_via", label: "Shipped via", width: 87, align: "center", formatter: "select",
					formatoptions: { value: "FE:FedEx;TN:TNT;DH:DHL", defaultValue: "DH" } }
			],
			data: [
				{ id: "10",  invdate: "2015-10-01", name: "test",   amount: "" },
				{ id: "20",  invdate: "2015-09-01", name: "test2",  amount: "300.00", tax: "20.00", closed: false, ship_via: "DH", total: "320.00" },
				{ id: "30",  invdate: "2015-09-01", name: "test3",  amount: "400.00", tax: "30.00", closed: false, ship_via: "FE", total: "430.00" },
				{ id: "40",  invdate: "2015-10-04", name: "test4",  amount: "200.00", tax: "10.00", closed: true,  ship_via: "TN", total: "210.00" },
				{ id: "50",  invdate: "2015-10-31", name: "test5",  amount: "300.00", tax: "20.00", closed: false, ship_via: "FE", total: "320.00" },
				{ id: "60",  invdate: "2015-09-06", name: "test6",  amount: "400.00", tax: "30.00", closed: false, ship_via: "FE", total: "430.00" },
				{ id: "70",  invdate: "2015-10-04", name: "test7",  amount: "200.00", tax: "10.00", closed: true,  ship_via: "TN", total: "210.00" },
				{ id: "80",  invdate: "2015-10-03", name: "test8",  amount: "300.00", tax: "20.00", closed: false, ship_via: "FE", total: "320.00" },
				{ id: "90",  invdate: "2015-09-01", name: "test9",  amount: "400.00", tax: "30.00", closed: false, ship_via: "TN", total: "430.00" },
				{ id: "100", invdate: "2015-09-08", name: "test10", amount: "500.00", tax: "30.00", closed: true,  ship_via: "TN", total: "530.00" },
				{ id: "110", invdate: "2015-09-08", name: "test11", amount: "500.00", tax: "30.00", closed: false, ship_via: "FE", total: "530.00" },
				{ id: "120", invdate: "2015-09-10", name: "test12", amount: "500.00", tax: "30.00", closed: false, ship_via: "FE", total: "530.00" }
			],
			//cmTemplate: { autoResizable: true, align: "center" },
			//autoResizing: { compact: true },
			//hidegrid: false,
			iconSet: "fontAwesome",
			idPrefix: "g4_",
			rownumbers: true,
			sortname: "invdate",
			sortorder: "desc",
			threeStateSort: true,
			sortIconsBeforeText: true,
			headertitles: true,
			toppager: true,
			pager: true,
			rowNum: 5,
			viewrecords: true,
			caption: "The grid demonstrates formatters, templates and the pager"
		});
		$("#grid5").jqGrid({
			colModel: [
				{ name: "name", label: "Client", width: 53 },
				{ name: "invdate", label: "Date", width: 90, align: "center", sorttype: "date",
					formatter: "date", formatoptions: { newformat: "d-M-Y" },
					searchoptions: { sopt: ["eq"] } },
				{ name: "amount", label: "Amount", width: 65, template: "number" },
				{ name: "tax", label: "Tax", width: 41, template: "number" },
				{ name: "total", label: "Total", width: 51, template: "number" },
				{ name: "closed", label: "Closed", width: 59, template: "booleanCheckboxFa", firstsortorder: "desc" },
				{ name: "ship_via", label: "Shipped via", width: 87, align: "center",
					formatter: "select",
					formatoptions: { value: "FE:FedEx;TN:TNT;DH:DHL", defaultValue: "DH" },
					stype: "select",
					searchoptions: { value: ":Any;FE:FedEx;TN:TNT;DH:DHL" } }
			],
			data: [
				{ id: "10",  invdate: "2015-10-01", name: "test",   amount: "" },
				{ id: "20",  invdate: "2015-09-01", name: "test2",  amount: "300.00", tax: "20.00", closed: false, ship_via: "DH", total: "320.00" },
				{ id: "30",  invdate: "2015-09-01", name: "test3",  amount: "400.00", tax: "30.00", closed: false, ship_via: "FE", total: "430.00" },
				{ id: "40",  invdate: "2015-10-04", name: "test4",  amount: "200.00", tax: "10.00", closed: true,  ship_via: "TN", total: "210.00" },
				{ id: "50",  invdate: "2015-10-31", name: "test5",  amount: "300.00", tax: "20.00", closed: false, ship_via: "FE", total: "320.00" },
				{ id: "60",  invdate: "2015-09-06", name: "test6",  amount: "400.00", tax: "30.00", closed: false, ship_via: "FE", total: "430.00" },
				{ id: "70",  invdate: "2015-10-04", name: "test7",  amount: "200.00", tax: "10.00", closed: true,  ship_via: "TN", total: "210.00" },
				{ id: "80",  invdate: "2015-10-03", name: "test8",  amount: "300.00", tax: "20.00", closed: false, ship_via: "FE", total: "320.00" },
				{ id: "90",  invdate: "2015-09-01", name: "test9",  amount: "400.00", tax: "30.00", closed: false, ship_via: "TN", total: "430.00" },
				{ id: "100", invdate: "2015-09-08", name: "test10", amount: "500.00", tax: "30.00", closed: true,  ship_via: "TN", total: "530.00" },
				{ id: "110", invdate: "2015-09-08", name: "test11", amount: "500.00", tax: "30.00", closed: false, ship_via: "FE", total: "530.00" },
				{ id: "120", invdate: "2015-09-10", name: "test12", amount: "500.00", tax: "30.00", closed: false, ship_via: "FE", total: "530.00" }
			],
			//cmTemplate: { autoResizable: true, align: "center" },
			//autoResizing: { compact: true },
			//hidegrid: false,
			iconSet: "fontAwesome",
			idPrefix: "g5_",
			rownumbers: true,
			sortname: "invdate",
			sortorder: "desc",
			threeStateSort: true,
			sortIconsBeforeText: true,
			headertitles: true,
			toppager: true,
			pager: true,
			rowNum: 5,
			viewrecords: true,
			searching: {
				//searchOperators: true,
				defaultSearch: "cn"
			},
			caption: "The grid demonstrates formatters, templates and the pager"
		}).jqGrid("filterToolbar");

		var initDatepicker = function (elem, options) {
				var self = this, $elem = $(elem),
					filterOnSelect = function () {
						setTimeout(function () {
							self.triggerToolbar();
						}, 50);
					},
					triggerInputChangeOnSelect = function () {
						$elem.change();
					};

				setTimeout(function () {
					$elem.datepicker({
						dateFormat: "dd-M-yy",
						autoSize: true,
						changeYear: true,
						changeMonth: true,
						showButtonPanel: true,
						showWeek: true,
						onSelect: (options.mode === "filter" ? filterOnSelect : triggerInputChangeOnSelect)
					});
				}, 50);
			};

		$("#grid6").jqGrid({
			colModel: [
				{ name: "name", label: "Client", width: 53 },
				{ name: "invdate", label: "Date", width: 90, align: "center", sorttype: "date",
					formatter: "date", formatoptions: { newformat: "d-M-Y" },
					searchoptions: { sopt: ["eq"], dataInit: initDatepicker } },
				{ name: "amount", label: "Amount", width: 65, template: "number" },
				{ name: "tax", label: "Tax", width: 41, template: "number" },
				{ name: "total", label: "Total", width: 51, template: "number" },
				{ name: "closed", label: "Closed", width: 59, template: "booleanCheckboxFa", firstsortorder: "desc" },
				{ name: "ship_via", label: "Shipped via", width: 87, align: "center",
					formatter: "select",
					formatoptions: { value: "FE:FedEx;TN:TNT;DH:DHL", defaultValue: "DH" },
					stype: "select",
					searchoptions: { value: ":Any;FE:FedEx;TN:TNT;DH:DHL" } }
			],
			data: [
				{ id: "10",  invdate: "2015-10-01", name: "test",   amount: "" },
				{ id: "20",  invdate: "2015-09-01", name: "test2",  amount: "300.00", tax: "20.00", closed: false, ship_via: "DH", total: "320.00" },
				{ id: "30",  invdate: "2015-09-01", name: "test3",  amount: "400.00", tax: "30.00", closed: false, ship_via: "FE", total: "430.00" },
				{ id: "40",  invdate: "2015-10-04", name: "test4",  amount: "200.00", tax: "10.00", closed: true,  ship_via: "TN", total: "210.00" },
				{ id: "50",  invdate: "2015-10-31", name: "test5",  amount: "300.00", tax: "20.00", closed: false, ship_via: "FE", total: "320.00" },
				{ id: "60",  invdate: "2015-09-06", name: "test6",  amount: "400.00", tax: "30.00", closed: false, ship_via: "FE", total: "430.00" },
				{ id: "70",  invdate: "2015-10-04", name: "test7",  amount: "200.00", tax: "10.00", closed: true,  ship_via: "TN", total: "210.00" },
				{ id: "80",  invdate: "2015-10-03", name: "test8",  amount: "300.00", tax: "20.00", closed: false, ship_via: "FE", total: "320.00" },
				{ id: "90",  invdate: "2015-09-01", name: "test9",  amount: "400.00", tax: "30.00", closed: false, ship_via: "TN", total: "430.00" },
				{ id: "100", invdate: "2015-09-08", name: "test10", amount: "500.00", tax: "30.00", closed: true,  ship_via: "TN", total: "530.00" },
				{ id: "110", invdate: "2015-09-08", name: "test11", amount: "500.00", tax: "30.00", closed: false, ship_via: "FE", total: "530.00" },
				{ id: "120", invdate: "2015-09-10", name: "test12", amount: "500.00", tax: "30.00", closed: false, ship_via: "FE", total: "530.00" }
			],
			//cmTemplate: { autoResizable: true, align: "center" },
			//autoResizing: { compact: true },
			//hidegrid: false,
			iconSet: "fontAwesome",
			idPrefix: "g6_",
			rownumbers: true,
			sortname: "invdate",
			sortorder: "desc",
			threeStateSort: true,
			sortIconsBeforeText: true,
			headertitles: true,
			toppager: true,
			pager: true,
			rowNum: 5,
			viewrecords: true,
			searching: {
				//searchOperators: true,
				defaultSearch: "cn"
			},
			caption: "The grid demonstrates formatters, templates and the pager"
		}).jqGrid("filterToolbar");
    });*/
});
