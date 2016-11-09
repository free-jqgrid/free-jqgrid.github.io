<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<meta name="author" content="Oleg Kiriljuk">
	<title>free jqGrid API documentation</title>
	<link rel="preload" as="script" crossorigin="anonymous"
		href="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"
		integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ">
	<link rel="preload" as="script" crossorigin="anonymous"
		href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"
		integrity="sha384-YWP9O4NjmcGo4oEJFXvvYSEzuHIvey+LbXkBNJ1Kd0yfugEZN9NCQNpRYBVC1RvA">
	<link rel="preload" as="script" crossorigin="anonymous"
		href="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.13.5/js/jquery.jqgrid.min.js"
		integrity="sha384-iiqLfmfhYpoxDemmvtFvidYdaDBovrjzDsRuNbVKQfEuCqZ8+jEqL4Ghu6IofClM">
	<link rel="preload" href="methods.json">
	<link rel="prefetch" href="methods.json">
	<link rel="preload" as="font" type="font/woff2"
		href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/3.3.7/fonts/glyphicons-halflings-regular.woff2"
		integrity="sha384-76YS2IfQ3qmYotbpI+I7mNFgT24iL+SLDOW4TaspSmVaPDmFZnbyDsdGS6ApOdNO"
		crossorigin="anonymous">

	<link rel="preload" as="style" crossorigin="anonymous" onload="this.rel='stylesheet'"
		href="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.13.5/css/ui.jqgrid.min.css"
		integrity="sha384-kpU+p/QlN4Jiue9BMOLbG3RaFwNs1L/mt2ONkw45SXt7oB4NvIw6ApRFqObITjsL">
	<noscript><link rel="stylesheet" crossorigin="anonymous"
		href="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.13.5/css/ui.jqgrid.min.css"
		integrity="sha384-kpU+p/QlN4Jiue9BMOLbG3RaFwNs1L/mt2ONkw45SXt7oB4NvIw6ApRFqObITjsL"></noscript>
<!--@@commonHeadIncludes-->
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