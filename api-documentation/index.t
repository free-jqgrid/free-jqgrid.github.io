<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="author" content="Oleg Kiriljuk">
	<title>free jqGrid API documentation</title>
	<link rel="preload" as="script" crossorigin="anonymous"
		href="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"
		integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ">
	<link rel="preload" as="script" crossorigin="anonymous"
		href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"
		integrity="sha384-YWP9O4NjmcGo4oEJFXvvYSEzuHIvey+LbXkBNJ1Kd0yfugEZN9NCQNpRYBVC1RvA">
	<link rel="preload" href="methods.json">
	<link rel="prefetch" href="methods.json">

	<link rel="preload" as="style" crossorigin="anonymous" onload="this.rel='stylesheet'"
		href="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.15.1/css/ui.jqgrid.min.css"
		integrity="sha384-vBKkTM2sE5bWw2KGTiBIEQGHlqzRzRr4OMUTLDCzrImvhbP9FuGIISwTqRfatPEE">
	<noscript><link rel="stylesheet" crossorigin="anonymous"
		href="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.15.1/css/ui.jqgrid.min.css"
		integrity="sha384-vBKkTM2sE5bWw2KGTiBIEQGHlqzRzRr4OMUTLDCzrImvhbP9FuGIISwTqRfatPEE"></noscript>
	<link rel="preload" as="script" crossorigin="anonymous"
		href="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.15.1/modules/min/grid.base.js"
		integrity="sha384-cu+wbSOgc8MpLUPypupZ9rv7AzrVVJM+ICRZXdqX/9IiF+dVT9/gLnbZFDwStXqV">
	<link rel="preload" as="script" crossorigin="anonymous"
		href="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.15.1/modules/min/jquery.fmatter.js"
		integrity="sha384-JH3D+VY+biV1jBrEDXr5q1lxH8dfKXmcZIMcI9nHErufkCqsW9+BmyHezKcOn70S">
	<link rel="preload" as="script" crossorigin="anonymous"
		href="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.15.1/modules/min/grid.common.js"
		integrity="sha384-j8qMpLuPE7SqEglwfVFL5y74DFg/ybPeC8tQNnOEmsGMm/fmsON0ivgw5/KrWVTJ">
	<link rel="preload" as="script" crossorigin="anonymous"
		href="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.15.1/modules/min/jqdnr.js"
		integrity="sha384-EP7mlAM6r/i1iINvjKFbECu9gxHUPV6cA0/owe+jRO8ydHG5X9vs0NyjF4NX0jUj">
	<link rel="preload" as="script" crossorigin="anonymous"
		href="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.15.1/modules/min/jqmodal.js"
		integrity="sha384-xyuHfJ0yNMSFEdgj2wHwDB/DuZdrdL/YqOqOaOg8vn9ZUygryhAMhknDE7PB7ICX">
	<link rel="preload" as="script" crossorigin="anonymous"
		href="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.15.1/modules/min/grid.custom.js"
		integrity="sha384-E4k2E7o05AvJZd1BE7sAgXzglCZMUWw99tbZLp4cjWqksBpN0KaQwmze3Rlu/bv2">
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