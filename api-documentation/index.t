<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<meta name="author" content="Oleg Kiriljuk">
	<title>free jqGrid API documentation</title>
	<link rel="subresource" href="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.13.1/css/ui.jqgrid.min.css">
<!--@@commonHeadIncludes-->
	<!--<link rel="stylesheet" href="https://rawgit.com/free-jqgrid/jqGrid/master/css/ui.jqgrid.css">
	<script src="https://rawgit.com/free-jqgrid/jqGrid/master/js/jquery.jqgrid.src.js"></script>-->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.13.1/css/ui.jqgrid.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.13.1/js/jquery.jqgrid.min.js" defer></script>
	<script>
	jQuery.noConflict();
	jQuery(function ($) {
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
	</script>
</head>
<body>
<!--@@menuHeader-->
<div class="container">
	<p>The are three main types of methods used in jqGrid:</p>
	<ul>
		<li>Standard jqGrid methods which can be jQuery methods too. The methods can be used like
			<l-js>$("#grid").jqGrid("setHeight", 200);</l-js> or like <l-js>$("#grid").setHeight(200);</l-js></li>
		<li>DOM Extensions. The methods can be used like <l-js>$("#grid")[0].triggerToolbar();</l-js></li>
		<li>Static methods, which are extensions of <l-js>$.jgrid</l-js> or <l-js>$.fmatter</l-js> object.
			An example of usage looks like <l-js>$.jgrid.jqID(id)</l-js> or <l-js>$.fmatter.NumberFormat(num, format)</l-js>.
			Some from the static methods need be called with <l-js>this</l-js> initialied to the DOM of the grid.
			For example, <l-js>var $td = $.jgrid.getDataFieldOfCell.call($("#grid")[0], tr, iCol);</l-js></li>
	</ul>
	<table id="api"></table>
</div>
</body>
</html>