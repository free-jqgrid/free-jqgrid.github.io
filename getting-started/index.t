<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="Accept-CH" content="DPR, Viewport-Width, Width">
    <meta name="author" content="Oleg Kiriljuk">
    <title>Getting started free jqGrid</title>

    <link rel="preload" as="script" crossorigin="anonymous"
        href="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"
        integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ">
    <link rel="preload" as="script" crossorigin="anonymous"
        href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"
        integrity="sha384-YWP9O4NjmcGo4oEJFXvvYSEzuHIvey+LbXkBNJ1Kd0yfugEZN9NCQNpRYBVC1RvA">
    
    <link rel="preload" as="image" href="https://res.cloudinary.com/ok-soft-gmbh/image/upload/v1458694846/sorting-resizing_rkxu2p.gif">
    <link rel="preload" as="image" href="https://res.cloudinary.com/ok-soft-gmbh/image/upload/v1458694746/grid-internal_mvnjkp.png">
    <link rel="prefetch" href="https://res.cloudinary.com/ok-soft-gmbh/image/upload/v1458694846/sorting-resizing_rkxu2p.gif">
    <link rel="prefetch" href="https://res.cloudinary.com/ok-soft-gmbh/image/upload/v1458694746/grid-internal_mvnjkp.png">
    <link rel="preload" as="font" type="font/woff2"
        href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/3.3.7/fonts/glyphicons-halflings-regular.woff2"
        integrity="sha384-76YS2IfQ3qmYotbpI+I7mNFgT24iL+SLDOW4TaspSmVaPDmFZnbyDsdGS6ApOdNO"
        crossorigin="anonymous">

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
<style>
img.imageExample {
    max-width: 100%;
    height: auto;
}
.anchor {
    position: absolute;
    padding-right: 2px;
    margin-left: -1em;
    text-decoration: none;
    display: none;
}
pre.prettyprint > .anchor {
    margin-left: -16px;
}
h1:hover a,
h2:hover a,
h3:hover a,
h4:hover a,
h5:hover a,
h6:hover a {
    text-decoration: none;
    cursor: pointer;
}
h1:hover .anchor,
h2:hover .anchor,
h3:hover .anchor,
h4:hover .anchor,
h5:hover .anchor,
h6:hover .anchor,
pre.prettyprint:hover .anchor,
div:hover > .anchor,
.anchor:hover {
    text-decoration: none;
    cursor: pointer;
    display: block;
}
pre.prettyprint:hover > a {
    text-decoration: none;
}
h1 a:focus, h1 a:active,
h2 a:focus, h2 a:active,
h3 a:focus, h3 a:active,
h4 a:focus, h4 a:active,
h5 a:focus, h5 a:active,
h6 a:focus, h6 a:active, {
    display: block;
    outline: none;
}
.ui-search-input > input::-ms-clear {
    display: none;
}
.ui-datepicker { font-size: 76.39%; }
.ui-datepicker select.ui-datepicker-year,
.ui-datepicker select.ui-datepicker-month {
    color: black
}
/* fix of inline css crated by critical CSS */
.s-ico .fa-lg { line-height: .75em }

div.my-bootstrap-style .ui-jqgrid.ui-jqgrid-bootstrap {
    border: 1px solid #003380;
}
div.my-bootstrap-style .ui-jqgrid.ui-jqgrid-bootstrap .ui-jqgrid-caption {
    background-color: #e6f0ff;
}
div.my-bootstrap-style .ui-jqgrid.ui-jqgrid-bootstrap .ui-jqgrid-hdiv {
    background-color: #cce0ff;
}
</style>
</head>
<body>
<!--@@menuHeader-->
<div class="container">
<h2link id="how_to_use">How to use free jqGrid?</h2link>
<p>Free jqGrid is a JavaScript plugin that displays table-based data in a lot of different configurations. The data can be loaded from JavaScript array or be loaded
from the server (in JSON or XML format). It supports client-side paging, sorting and filtering on server-side.
One can group the displayed data, create the data as pivot table (made aggregation of data), display the data in the Tree form
creates subgrids and so on. One can easily implement tree variants of editing of local or remote data.</p>
<p>The large number of possibilities makes it difficult for a newcomer to start using jqGrid. The information below
provides basic free jqGrid knowledge to make it easier to get started quickly. We will just include some small "advanced" options
in some demos, mostly to show the diversity of customization possibilities.</p>
<h3link id="the_first_grid">The first grid</h3link>
<p>Free jqGrid is implemented as jQuery plugin, our plugin uses jQuery UI CSS or Bootstrap CSS for styling. Thus
one would have to include the corresponding JavaScript and CSS files. The second basic thing, which one should know,
is the fact that free jqGrid uses HTML <l-html><table></l-html> internally. One would have to create an empty
<l-html><table></l-html> element to reserve the place where the grid should be created. Finally one should
call `jQuery("#tableId").jqGrid({/*options*/});` to create the grid. Different options of
free jqGrid provides <em>the data</em> of the table body and the information about the outer part of the grid.
For example, the code below</p>
<pre-id-js id="the_first_grid-code-js1">$(function () {
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
});</pre-id-js>
<p>creates the simple grid</p>
<table id="grid"></table>
<p style="margin-top:.5em;">The differences between free jqGrid and a standard HTML table are as follows:</p>
<ul>
    <li>Sortable Columns: One can click on the column header to <em>sort</em> the rows by the content in the column.</li>
    <li>Hover Effects: Free jqGrid gives you the ability to use hovering effects for rows and the cells on the grid.</li>
    <li>Selectable Rows: One can click on a row of the grid to select/unselect it</li>
    <li>Multi-Selectable Rows: One can select multiple rows.</li>
    <li>Selectable Rows: One can click on a row of the grid to select it.</li>
    <li>Resizable Columns: One can resize the columns in an intuitive way, as shown in the animated image below.</li>
</ul>
<p style="font-style: italic;">Please use the demonstration grid above to sample just a few of the functionalities free jqGrid offers.</p>
<div style="margin-left: 2px; width: 415px; height: 139px; overflow: hidden">
<img id="sorting-resizing" src="https://res.cloudinary.com/ok-soft-gmbh/image/upload/v1458694846/sorting-resizing_rkxu2p.gif" style="margin-left: -2px;" alt="sorting and resizing of grid">
</div>
<p>The full HTML page from the above example can look as following:</p>
<pre-id-html id="the_first_grid_code"><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Your page title</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.4/themes/redmond/jquery-ui.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.15.4/css/ui.jqgrid.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.15.4/jquery.jqgrid.min.js"></script>
    <script>
    //<![CDATA[
    $(function () {
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
    });
    //]]>
    </script>
</head>
<body>
<table id="grid"></table>
</body>
</html>
</pre-id-html>
<p>You can try the example on <a href="https://jsfiddle.net/OlegKi/e6hu02z4/">JSFiddle</a>.</p>
<p>It's important to understand that the empty <l-html><table></l-html> will be converted to relatively complex
structure of divs and tables. One can use, for example, Chrome developer tools to examine the grid after creating:</p>
<div id="grid-internal-div"><a class="anchor" href="#grid-internal-div"><span class="fa fa-link"></span></a>
<a href="#grid-internal-div"> 
<img id="grid-internal" src="https://res.cloudinary.com/ok-soft-gmbh/image/upload/v1458694746/grid-internal_mvnjkp.png" class="imageExample" alt="grid internals">
</a></div>
<p>One don't need to know all internals of the grid, but it's important to understand some basis facts:</p>
<ul>
<li>every row of the grid (<l-html><tr></l-html> elements) have `id` attribute (see red marked attributes
with the same values like we have in the input data: 10, 20). We will name the ids as rowids in the future.
It's strictly recommended, that the input data contains `id` with <em>unique</em> values.
In the way you will have the control over rowids, which will be used to identify the rows. If jqGrid will not find
the id information in the input data, then it assign automaticaly the values `"jqg1"`,
`"jqg2"`, `"jqg2"`, ...</li>
<li>the first row of the grid have no data (see the box marked yellow), but the CSS property <l-css>width</l-css> will be
assigned to every cell. The reason of such behavior: the usage `table-layout: fixed;` CSS property of the grid
(<l-html><table></l-html>). It improves essencially the performance of the randering of the grid.
On the other side the width of the columns is fixed and not depends on the width content of the cells.</li>
<li>The column headers are not the part of the <l-html><table></l-html>. jqGrid creates separete <l-html><div></l-html>
(see the box marked in green) used named hDiv (header div) in difference to bDiv (body div) with the separate
<l-html><table></l-html>, which conteins <l-html><table></l-html> with <l-html><thead></l-html>
and <l-html><th></l-html> elements. The separation of the header and the body of the table is made because of
the possibility to create the grid with the fixed height and vertical scrolling, which scrolls only the <em>body</em>
holding the headers fixed.</li>
</ul>
<p>jqGrid have a lot of different options, callback functions and events, which allows you full customize the behavior of the grid.
One can for example create custom tooltip text or to remove it. One can prevent hovering or rows. One can prevent allow to
select multiple rows, to prevert unselection of rows on the second click on previously seceted row, ... It's important
curretly just to understand the basis features existing in every grid. The custumization of the features will be described later.</p>
<h3link id="type_of_data">Type of data, templetes, formatters</h3link>
<p>The input data contains typically not only strings, but numbers, dates and so on. One uses typically some locale independend
format for transfering the data (like `123456789.12345` for numbers, `"2015-12-31"`, `"2015-12-31T07:08:45:15Z"` and so on).
One want typically display the data in some locale format (like `123,456,789.12` and `"12/31/2015 8:45:15 AM"`).
Moreover the data in the column should be sorted based on the type of data and not as its locale string representation.</p>
<p>One can include in `colModel` additional properties, which specify the behavior specific for formatting,
sorting editing and so on. For example, one can specify `align: "center"` or `align: "right"`
to change the default alignment of the text in the cells. One can use `width` property, for example,
`width: 300`, to change the default width (150px) of the column.
One can use `sorttype: "number"` in the column which holds numbers to change the default sorting befavior. One can
use additionally property `formatter: "number"` to display the number using decimal and thousands separator
specific for the current locale. The default locale included in <l-html>jquery.jqgrid.min.js</l-html> is en-US. There are
38 locales included in <l-html>i18n</l-html> folder. To include German locale one needs for example just include</p>
<pre-html><script src="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.15.4/i18n/min/grid.locale-de.js"></script>
</pre-html>
<p>in the head of the page (before of after <l-html>jquery.jqgrid.min.js</l-html>).</p>
<p>Below is an example of the JavaScript code, which uses some features described above:</p>
<pre-id-html id="type_of_data_code"><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Your page title</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.4/themes/redmond/jquery-ui.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.15.4/css/ui.jqgrid.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.15.4/jquery.jqgrid.min.js"></script>
    <script>
    //<![CDATA[
    $(function () {
        "use strict";
        $("#grid1").jqGrid({
            colModel: [
                { name: "name", label: "Client", width: 53 },
                { name: "invdate", label: "Date", width: 75, align: "center", sorttype: "date",
                    formatter: "date", formatoptions: { newformat: "d-M-Y" } },
                { name: "amount", label: "Amount", width: 65, template: "number" },
                { name: "tax", label: "Tax", width: 41, template: "number" },
                { name: "total", label: "Total", width: 51, template: "number" },
                { name: "closed", label: "Closed", width: 59, template: "booleanCheckbox", firstsortorder: "desc" },
                { name: "ship_via", label: "Shipped via", width: 87, align: "center", formatter: "select",
                    formatoptions: { value: "FE:FedEx;TN:TNT;DH:DHL", defaultValue: "DH" } }
            ],
            data: [
                { id: "10",  invdate: "2015-10-01", name: "test",   amount: "" },
                { id: "20",  invdate: "2015-09-01", name: "test2",  amount: "300.00", tax: "20.00", closed: false, ship_via: "FE", total: "320.00" },
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
            iconSet: "fontAwesome",
            idPrefix: "g1_",
            rownumbers: true,
            sortname: "invdate",
            sortorder: "desc",
            caption: "The grid, which uses predefined formatters and templates"
        });
    });
    //]]>
    </script>
</head>
<body>
<table id="grid1"></table>
</body>
</html>
</pre-id-html>
<p>You can try the example on <a href="https://jsfiddle.net/OlegKi/j3hj8rsw/">JSFiddle</a>. </p>
<p>The above code uses `iconSet: "fontAwesome"` and includes <a href="http://fontawesome.io/">Font Awesome 4.x</a>
`font-awesome.min.css` additionally to CSSs included in the previous examples. You can see the resulting grid below:</p>
<table id="grid1"></table>
<p style="margin-top:.5em;">The meaning of the most of properties and options used in jqGrid can be guessed intuitively.</p>
<p>The option `rownumbers: true` creates additional column with the row numbers. The input data will be sorted by
the `invdate` column displayed the latest dates first. Such behavior are defined by the options `sortname: "invdate"` and
`sortorder: "desc"`. The `caption` option defines the text on the title of the grid. By default the title contains
the button, which allows to collapse/expand the grid. If you don't want to have the button you need to include additional
option `hidegrid: false`. It's the main principle of jqGrid. It contains many options which allows to customize the default
behavior. Thus if you see some element of the grid which you don't like then probably there are exist an additional option
which allows you to remove the element or to change its behavior.</p>
<p>The option `idPrefix: "g1_"` is important because we use the data with <em>the same `id` values</em>
in multiple grids on the page. The `id` arrtibute of every row `<tr>` of the grid will be assign
based on the value of `id` property of input data. The usage of `idPrefix: "g1_"` force prefixing
of id values. As the result the rows of the grid will have rowids `"g1_10"`, `"g1_20"`, ... instead
of `"10"`, `"20"`, ... used in the first demo. It prevents from id duplicates, prohibited
in HTML.</p>
<p>The `label` property defines the column header. If no `label` is defined then the `name` property will be used in
the column header.</p>
<p>The columns `invdate` and `ship_via` used formatters `"date"` and `"select"`. The options of the formatters are defined
using `formatoptions`.</p>
<p>The input data of the column `ship_via` contains the values `"FE"`, `"TN"` or `"DH"`. The values will be displayed as
`"FedEx"`, `"TNT"` or `"DHL"` based on the `value` property of the `formatoptions`. The first item of data don't conatins and
`ship_via` property and the grid displays `"DHL"` for the item based on the property `defaultValue: "DH"` of the `formatoptions`.</p>
<p>The input data of the column `invdate` contains the date in <a href="https://en.wikipedia.org/wiki/ISO_8601">ISO 8601</a>
format (for example `"2015-10-31"`). The `formatoptions` contains `newformat: "d-M-Y"`, which specifys the format of the data
displayed as `31-Oct-2015`. The value of `newformat` corresponds formatting of the date in PHP
(see <a href="https://secure.php.net/manual/en/function.date.php">here</a>). If we would remove the property
`formatoptions: { newformat: "d-M-Y" }` then the date will be displayed as `10/31/2015` in case of usage default en-US locale
or as `31.10.2015` if we would include the German locale `grid.locale-de.min.js`. The locale file specifys the <em>default</em>
format of the date, but one can still use `formatoptions.newformat` to display dates in another format, which we prefer for
the column. By the way the ISO 8601 is the deafult input format used by `formatter: "date"`, but one can use `srcformat`
property of `formatoptions` to be able to process the data correctly if the input data contains another input format. For example,
we can use `formatoptions: { srcformat: "u1000", newformat: "d.m.Y H:i:s" }` to decode the timestamp `1450956451996` in the
form `24.12.2015 12:27:31`. The formatter just changes the fprmat of data <em>displayed</em> in the column. The property
`sorttype: "date"` informs jqGrid to sort the contain the column by date instead of comparing the texts.</p>
<p>We included the details of `formatter: "date"` and `formatter: "select"` just as examples of predefined formatters.
Every formatter support its own specific options, which can be specified in `formatoptions`. There are some typical set of
column properties, which will be typically used together. For example, very common settings are
`formatter: "number", align: "right", sorttype: "number"` in case of usage numbers as input data. The property `template: "number"`
is the shortcut, which allows to specify all the options (and some other used for searching and editing) at once. We use
the template for columns `amount`, `amount` and `total`.</p>
<p>The column `closed` uses one more template: `template: "booleanCheckbox"`. The template uses `formatter: "checkboxFontAwesome4"`
available only if we includes CSS of <a href="http://fontawesome.io/">Font Awesome 4.x</a>. The `template: "booleanCheckbox"`
displays Boolean input data `true` and `false` as <i style="font-size: 14.6667px;" class="fa fa-square-o fa-lg" title="Closed"></i> or
<i style="font-size: 14.6667px;" class="fa fa-check-square-o fa-lg" title="Closed"></i>. The property `firstsortorder: "desc"`
force to start sorting of the column by descending oder, where the checked items (`true`) will be displayed first. The second
click on the column header of the column `closed` will invert the sorting order. The property `firstsortorder: "desc"` is practical,
because one want typecally see checked items if one sort by the column with Bollean data.</p>
<h3link id="bootstrap">Usage of Boostrap CSS instead of jQuery UI CSS</h3link>
<p>Free jqGrid can use Boostrap CSS instead of default jQuery UI CSS. One need just need include Boostrap CSS and
to add `guiStyle: "bootstrap"` option. The code posted in the previous section can look as the following:</p>
<pre-id-html id="bootstrap_code"><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Your page title</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.15.4/css/ui.jqgrid.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.15.4/jquery.jqgrid.min.js"></script>
    <script>
    //<![CDATA[
    $(function () {
        "use strict";
        $("#grid1b").jqGrid({
            colModel: [
                { name: "name", label: "Client", width: 53 },
                { name: "invdate", label: "Date", width: 75, align: "center", sorttype: "date",
                    formatter: "date", formatoptions: { newformat: "d-M-Y" } },
                { name: "amount", label: "Amount", width: 65, template: "number" },
                { name: "tax", label: "Tax", width: 41, template: "number" },
                { name: "total", label: "Total", width: 51, template: "number" },
                { name: "closed", label: "Closed", width: 59, template: "booleanCheckbox", firstsortorder: "desc" },
                { name: "ship_via", label: "Shipped via", width: 87, align: "center", formatter: "select",
                    formatoptions: { value: "FE:FedEx;TN:TNT;DH:DHL", defaultValue: "DH" } }
            ],
            data: [
                { id: "10",  invdate: "2015-10-01", name: "test",   amount: "" },
                { id: "20",  invdate: "2015-09-01", name: "test2",  amount: "300.00", tax: "20.00", closed: false, ship_via: "FE", total: "320.00" },
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
            guiStyle: "bootstrap",
            iconSet: "fontAwesome",
            idPrefix: "gb1_",
            rownumbers: true,
            sortname: "invdate",
            sortorder: "desc",
            caption: "The grid, which uses predefined formatters and templates"
        });
    });
    //]]>
    </script>
</head>
<body>
<table id="grid1b"></table>
</body>
</html>
</pre-id-html>
<p>The resulting grid will be:</p>
<table id="grid1b"></table>
<p style="margin-top:.5em;">Free jqGrid allows to customize the results. By adding the following CSS rules for example</p>
<pre-id-css id="bootstrap_custom_css">.ui-jqgrid.ui-jqgrid-bootstrap {
    border: 1px solid #003380;
}
.ui-jqgrid.ui-jqgrid-bootstrap .ui-jqgrid-caption {
    background-color: #e6f0ff;
}
.ui-jqgrid.ui-jqgrid-bootstrap .ui-jqgrid-hdiv {
    background-color: #cce0ff;
}
</pre-id-css>
<p>one gets the following results</p>
<div class="my-bootstrap-style">
<table id="grid2b"></table>
</div>
<p style="margin-top:.5em;">We removed the option `iconSet: "fontAwesome"` in the last example additionally, to show that the default value
of `iconSet` option is `iconSet: "glyph"` (instead of `iconSet: "jQueryUI"`) in case of usage Bootstrap CSS.</p>
<p id="bootstrap4">To use Bootstrap 4 instead of Bootstrap 3 one need just to replace `guiStyle: "bootstrap"` parameter to `guiStyle: "bootstrap4"`.
jqGrid uses only Bootstrap CSS and no JavaScript files of Bootsrap, but if you do need `bootstrap.min.js` then you need to include
both `popper.min.js` and `bootstrap.min.js`. Be carefull, that jqGrid can't be used with slim version of jQuery.
One need to include the full version instead. The resulting code could be the following, for example:</p>
<pre-id-html id="bootstrap4_code"><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Demo which uses Bootstrap 4</title>
    <link rel="stylesheet" crossorigin="anonymous"
          href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css"
          integrity="sha256-zVUlvIh3NEZRYa9X/qpNY8P1aBy0d4FrI7bhfZSZVwc=">
    <link rel="stylesheet" crossorigin="anonymous"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
          integrity="sha256-eZrrJcwDc/3uDhsdt61sL2oOBY362qM3lon1gyExkL0=">
    <link rel="stylesheet" crossorigin="anonymous"
          href="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.15.4/css/ui.jqgrid.min.css"
          integrity="sha256-gY7w+ZzYjTPCx5Gx1YexizMJigg1YYwcQ3fAnWgAUTE=">
    <script crossorigin="anonymous" src="https://code.jquery.com/jquery-3.3.1.min.js"
            integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="></script>
    <!-- the next line need be uncommented if you need to use bootstrap.min.js -->
    <!--<script crossorigin="anonymous"
                src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
                integrity="sha256-98vAGjEDGN79TjHkYWVD4s87rvWkdWLHPs5MC3FvFX4="></script>
    <script crossorigin="anonymous"
            src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/js/bootstrap.min.js"
            integrity="sha256-IeI0loa35pfuDxqZbGhQUiZmD2Cywv1/bdqiypGW46o="></script>-->
    <script>
        $.jgrid = $.jgrid || {};
        $.jgrid.no_legacy_api = true;
    </script>
    <script crossorigin="anonymous"
            src="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.15.4/jquery.jqgrid.min.js"
            integrity="sha256-GN28v8v0UEhIeH35OHeGh9LoP5liiKMRbiIFVQ5flTo="></script>
    <script>
    //<![CDATA[
    $(function () {
        "use strict";
        $("#grid1b").jqGrid({
            colModel: [
                { name: "name", label: "Client", width: 53 },
                { name: "invdate", label: "Date", width: 75, align: "center", sorttype: "date",
                    formatter: "date", formatoptions: { newformat: "d-M-Y" } },
                { name: "amount", label: "Amount", width: 65, template: "number" },
                { name: "tax", label: "Tax", width: 41, template: "number" },
                { name: "total", label: "Total", width: 51, template: "number" },
                { name: "closed", label: "Closed", width: 59, template: "booleanCheckbox", firstsortorder: "desc" },
                { name: "ship_via", label: "Shipped via", width: 87, align: "center", formatter: "select",
                    formatoptions: { value: "FE:FedEx;TN:TNT;DH:DHL", defaultValue: "DH" } }
            ],
            data: [
                { id: "10",  invdate: "2015-10-01", name: "test",   amount: "" },
                { id: "20",  invdate: "2015-09-01", name: "test2",  amount: "300.00", tax: "20.00", closed: false, ship_via: "FE", total: "320.00" },
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
            guiStyle: "bootstrap4",
            iconSet: "fontAwesome",
            idPrefix: "gb1_",
            rownumbers: true,
            sortname: "invdate",
            sortorder: "desc",
            caption: "The grid, which uses predefined formatters and templates"
        });
    });
    //]]>
    </script>
</head>
<body>
<table id="grid1b"></table>
</body>
</html>
</pre-id-html>
<p>See <a href="https://jsfiddle.net/OlegKi/w96qn54f/">JSFiddle demo</a>.</p>
<h3link id="paging_searching_filtering">Paging, searching, filtering</h3link>
<p>Paging, searching and filtering are extreamly important in case of displaying large set of information.
One should understand that displaying thousands or rows of the data have no value for the user. The user need to know
only some small subset from the data, like top 10 rows sorted based on some criteria.
The posibility of paging (showing the next 10 rows from top 20) is absolutely enough in the most realistic scenarios.
Sometimes one need to filter the data first of all based on one criterias (like get the data from the last month) and then
to sort the result based on another criterias and display the final result using the paging.</p>
<p>The next paragraphs gives small infroduction of the paging, searching and filtering features of free jqGrid. We
will describe all the features based on local data, but jqGrid supports the same features with remote data too.</p>
<h4link id="paging">Paging</h4link>
<p>Sometime one need to dispaly so many items of data that display not allows to represent. In such case it would be much more
effective to use local paging of data instead of displaying all the items on the page and to require that the user uses vertical
scrollbar to see the data. Placing of all the data on the HTML page takes relative much time and it makes the page very slow
(less responsive). We can modify the above example by adding `toppager: true`, `pager: true` and `rowNum: 5` to have the following grid:</p>
<table id="grid2"></table>
<p style="margin-top:.5em;">The option `toppager: true` adds the pager on top of the grid, the option `pager: true` adds the bottom pager and
`rowNum: 5` specifies the size to the page. One can use additional `viewrecords: true` option to display the status of
the page in the right part of the pagers. One can use `page: 2` to specify the page number displayed initially:</p>
<table id="grid3"></table>
<p style="margin-top:.5em;">One uses `page: 2` seldom. It's just important don't mix `pager` and `page` properties.</p>
<p>The pager have the bottons <span style="font-size: 14.6667px;" class="fa fa-fw fa-step-backward ui-state-default ui-corner-all"></span> (the first),
<span style="font-size: 14.6667px;" class="fa fa-fw fa-backward ui-state-default ui-corner-all"></span> (the previous),
<span style="font-size: 14.6667px;" class="fa fa-fw fa-forward ui-state-default ui-corner-all"></span> (the next) and
<span style="font-size: 14.6667px;" class="fa fa-fw fa-step-forward ui-state-default ui-corner-all"></span> (the last), which allow to navigate
over the pages. The additional <l-html><input></l-html> element allows to navigate to some page directly by the number.</p>
<h4link id="sorting">Sorting</h4link>
<p>There are two main options of jqGrid, which specify sorting: `sortname` and `sortorder`. The default value of `sortname` is
the empty string, which means the the grid will be displayed unsorted. It means that the order of rows corresponds the order of
items in the array of item of the input data. If the `sortname` is specified, for example `sortname: "invdate"`, then the grid sorts
the data first comparing the property `invdate` of the input data. By default the values of the property will be compared as strings.
It would be good enough if we would use ISO date format like `"2015-10-31"`, but it would be wrong in more common case.
The comparing of strings is case insensitive by default, but one can change the behafior by usage `ignoreCase: false` option.
One can include in the column `sorttype` with one from predefined values (`"integer"`, `"number"` and `"date"`) which will change
the default `sorttype: "text"`. One can define `sorttype` as function or specify the callback function `sortfunc`, which gives
you the maximal control over comparing the items.</p>
<p>By default clicking on the column header will change the sorting column or to invert the sort order.
The usage of `threeStateSort: true` changes the behavior so that the 3-d click on the column header makes the grid unsorted.
You can try the 3-state behavior of sorting on the next grid, where we added the option `sortIconsBeforeText: true`,
which places the sorting icons <em>before</em> the text of the column header. It could be practical if one prefere to display
the sorting icons even if the column width so small that the text of the column header couldn't be full displayed together
with the corting icon.</p>
<table id="grid4"></table>
<p style="margin-top:.5em;">We included in the grid one more option `headertitles: true`,
which creates the tooltips on column headers. It's practical if one </p>
<p>There are some other advanced options like `multiSort: true`, which allows to sort by
multiple columns and some options, which customize the look of the sorting icons.
The option `viewsortcols` and ovewriding `$.jgrid.builderSortIcons` method allows
to implement more advanced scenarios.</p>
<h4link id="filtering">Filtering</h4link>
<p>Filtering is very practical and powerful feature of jqGrid. One can create an additional line
with input elements which allows to filter the grid data by specified values. One need just
call of the method `filterToolbar`.</p>
<table id="grid5"></table>
<p style="margin-top:.5em;">The code of the above example is almost the same as in the previous one.
The following changes are made:</p>
<ul>
<li>The call of the method `filterToolbar` is added.</li>
<li>The option `searching: { defaultSearch: "cn" }` is added. It sepecify the default options of
searching. By default jqGrid filters by `"bw"` (begin with) compare operator. The option
`defaultSearch: "cn"` changes the default behavior to "contain" operator.</li>
<li>The property `searchoptions: { sopt: ["eq"] }` are added in the column with the date to
change the default "contain" operator used for filtering to "equal to" operator in the column.</li>
<li>The properties `stype: "select", searchoptions: { value: ":Any;FE:FedEx;TN:TNT;DH:DHL" }`
are added in the last column. It creates the select in the filter toolbar with the options
`"Any"`, `"FedEx"`, `"TNT"` and `"DHL"`, where choosing of `"Any"` will shich off the filtering
by the column. The property `searchoptions.value` contains semicolon separated string, where
the subtrings like `FE:FedEx` specify the value and the text of the option:
<l-html><option value="FE">FedEx</option></l-html>. The substring `:Any` creates the option
<l-html><option value="">Any</option></l-html> with empty value, which will be interpreted
as no filtering.</li>
</ul>
<p>One can find the full code of the above demo below:</p>
<pre-id-js id="filtering-code-js1">$(function () {
    "use strict";
    $("#grid5").jqGrid({
        colModel: [
            { name: "name", label: "Client", width: 53 },
            { name: "invdate", label: "Date", width: 90, align: "center", sorttype: "date",
                formatter: "date", formatoptions: { newformat: "d-M-Y" },
                searchoptions: { sopt: ["eq"] } },
            { name: "amount", label: "Amount", width: 65, template: "number" },
            { name: "tax", label: "Tax", width: 41, template: "number" },
            { name: "total", label: "Total", width: 51, template: "number" },
            { name: "closed", label: "Closed", width: 59, template: "booleanCheckbox", firstsortorder: "desc" },
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
            defaultSearch: "cn"
        },
        caption: "The grid, which demonstrates formatters, templates and the pager"
    }).jqGrid("filterToolbar");
});
</pre-id-js>
<p>Remark: we added the CSS rule</p>
<pre-id-css id="filtering-code-css1">.ui-search-input > input::-ms-clear {
    display: none;
}
</pre-id-css>
<p>to remove additional "clear field", which will be displayed in `<input>` elements by default in
Internet Explorer (see <a href="https://msdn.microsoft.com/en-us/library/windows/apps/hh465740.aspx">IE documentation</a>).</p>
<p>We don't want to include too much details in the "Getting started" toptic. Nevertherless we
would like to include one more small example, which shows the main way to integration any
well-known conrols in the filter toolbar of jqGrid. One can specify `dataInit` callback
inside of `searchoptions` property of some column. For example we can use jQuery UI Datepicker
in the "Date" column in the following way. We need modify `searchoptions: { sopt: ["eq"] }` property
to the following:</p>
<pre-id-js id="filtering-code-js2">searchoptions: {
    sopt: ["eq"],
    dataInit: function (elem, options) {
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
    }
}
</pre-id-js>
<table id="grid6"></table>
</div>
</body>
</html>