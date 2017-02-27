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
		href="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.14.0/css/ui.jqgrid.min.css"
		integrity="sha384-CBFfj5K1lM/ysApOnrpK2i8VXrNLGLuHDiNn3EMZM9J5kcajoEM5v+wN/o3p7qJq">
	<noscript><link rel="stylesheet" crossorigin="anonymous"
		href="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.14.0/css/ui.jqgrid.min.css"
		integrity="sha384-CBFfj5K1lM/ysApOnrpK2i8VXrNLGLuHDiNn3EMZM9J5kcajoEM5v+wN/o3p7qJq"></noscript>
	<link rel="preload" as="script" crossorigin="anonymous"
		href="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.14.0/modules/min/grid.base.js"
		integrity="sha384-R+cT9q6IuqVo/pfroCOy5Ce+yTPjdgvU7XP8In9xNeSkhWyZCzs+F8YTkS5GRttn">
	<link rel="preload" as="script" crossorigin="anonymous"
		href="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.14.0/modules/min/jquery.fmatter.js"
		integrity="sha384-q8Wz+4dR1lwwDSR9oNqB2jB6z8et2MUSGGZS2e6x/GiwIFXB6G5eQKYQ2JbUD7BD">
	<link rel="preload" as="script" crossorigin="anonymous"
		href="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.14.0/modules/min/grid.common.js"
		integrity="sha384-uO6SHzM32E6ZbuW5QkSLOL8gUX7gj77Dm9PLLgJAL4im52phBYKjRwwfgDUoUvBn">
	<link rel="preload" as="script" crossorigin="anonymous"
		href="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.14.0/modules/min/jqdnr.js"
		integrity="sha384-941p4h68nPzNGcrXXuWwaM4uKEC0ErT2tVojj1P711oUyLiROfOgWcewwZBxVG9P">		
	<link rel="preload" as="script" crossorigin="anonymous"
		href="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.14.0/modules/min/jqmodal.js"
		integrity="sha384-YLf13c0SDjfM/TLLJMreGhPtnfKRy+0n6q7okpT/KhbdQSeVWN/VTtu7OMIPt7Kk">
	<link rel="preload" as="script" crossorigin="anonymous"
		href="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.14.0/modules/min/grid.custom.js"
		integrity="sha384-98pDcx40aG3OUCMQZW4vFsnOVQVnzNFIV+hrrddpiOyYkXRqRLkoJK7tJ0t5aHpt">
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