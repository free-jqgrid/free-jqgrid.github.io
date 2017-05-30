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
		href="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.14.1/css/ui.jqgrid.min.css"
		integrity="sha384-u8OuIQ+o+vnlopCNCvMt+yfUAvf6sxgapU4VEuCDbcBdOh88gBw5nPpyms9aXjD/">
	<noscript><link rel="stylesheet" crossorigin="anonymous"
		href="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.14.1/css/ui.jqgrid.min.css"
		integrity="sha384-u8OuIQ+o+vnlopCNCvMt+yfUAvf6sxgapU4VEuCDbcBdOh88gBw5nPpyms9aXjD/"></noscript>
	<link rel="preload" as="script" crossorigin="anonymous"
		href="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.14.1/modules/min/grid.base.js"
		integrity="sha384-Y4CMlcA2EENr5Yr6MQcAxbwp/KfplRiZebjrXs46vdxeE58TqWzZhjYMTgFdgWs4">
	<link rel="preload" as="script" crossorigin="anonymous"
		href="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.14.1/modules/min/jquery.fmatter.js"
		integrity="sha384-93PHlXzia23WWG+qM6ZYsFOxLRBjh5gFidILnGCMFGuDF4XmiHPIKvKNlG6Wwl/b">
	<link rel="preload" as="script" crossorigin="anonymous"
		href="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.14.1/modules/min/grid.common.js"
		integrity="sha384-5j6kLRibHUI2qaLdaP2mfbYKe2n6LcX0tfFfDENWvuL7RhSQ9xRbkNyst+KkJaLA">
	<link rel="preload" as="script" crossorigin="anonymous"
		href="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.14.1/modules/min/jqdnr.js"
		integrity="sha384-EP7mlAM6r/i1iINvjKFbECu9gxHUPV6cA0/owe+jRO8ydHG5X9vs0NyjF4NX0jUj">		
	<link rel="preload" as="script" crossorigin="anonymous"
		href="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.14.1/modules/min/jqmodal.js"
		integrity="sha384-xyuHfJ0yNMSFEdgj2wHwDB/DuZdrdL/YqOqOaOg8vn9ZUygryhAMhknDE7PB7ICX">
	<link rel="preload" as="script" crossorigin="anonymous"
		href="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.14.1/modules/min/grid.custom.js"
		integrity="sha384-KUPEygM0MGy2eMkznGJ+e+sF3Ucb6vg56q0ooRQ2v8k/ISxNKgDj8dc5qsNqsuqj">
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