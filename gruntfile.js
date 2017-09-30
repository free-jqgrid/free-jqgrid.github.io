/*global module,require*/
module.exports = function (grunt) {
	// load all grunt tasks matching the ['grunt-*', '@*/grunt-*'] patterns
	require("load-grunt-tasks")(grunt);

	grunt.initConfig({
		watch: {
			files: [
				"api-documentation/*.t",
				"api-documentation/*.js",
				"examples/*.t",
				"examples/*.js",
				"getting-started/*.t",
				"getting-started/*.js",
				"./*.js",
				"commonHeadIncludes.htm",
				"menuHeader.htm",
				"./*.t",
				"!**/*.min.js"
			],
			tasks: ["default"]
		},
		uglify: {
			all: {
				files: {
					"./require.config.min.js": ["./require.config.js"],
					"api-documentation/require.config.min.js": ["api-documentation/require.config.js"],
					"examples/require.config.min.js": ["examples/require.config.js"],
					"getting-started/require.config.min.js": ["getting-started/require.config.js"]
				},
				options: {
					preserveComments: false,
					sourceMap: true
				}
			}
		},
		eslint: {
			target: [
				"api-documentation/*.js",
				"examples/*.js",
				"getting-started/*.js",
				"*.js",
				"!**/*.min.js"
			]
		},
		critical: {
			all: {
				options: {
					timeout: 70000,// ms; abort critical CSS generation after this timeout
					minify: true
				},
				src: [
					"./api-documentation/index.html",
					"./examples/index.html",
					"./getting-started/index.html",
					"./index.html"
				],
				dest: "./"
			}
		},
		replace: {
			all: {
				src: [
					"./api-documentation/index.html",
					"./examples/index.html",
					"./getting-started/index.html",
					"./index.html"
				],
				overwrite: true,
				replacements: [{
					from: /url\(\.\.\/\.\.\/fonts\/fontawesome-/g,
					to: "url(https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/fonts/fontawesome-"
				}]
			}
		},
		sitebuild: {
			all: {
				options: {
					commonHeadIncludes: "commonHeadIncludes.htm",
					menuHeader: "menuHeader.htm",
					shortcuts: [
						{
							from: /<h([1-9])link\s*id\s*=\s*(["|'])(.*?)\2>/g,
							to: "<h$1 id=\"$3\"><a class=\"anchor\" href=\"#$3\"><span class=\"fa fa-link\"></span></a><a href=\"#$3\">"
						},
						{
							from: /<\/h([1-9])link>/g,
							to: "</a></h$1>"
						},
						{
							from: /<l-(js|css|html)>/g,
							to: "<code class=\"prettyprint lang-$1\">"
						},
						{
							from: /<\/l-(js|css|html)>/g,
							to: "</code>"
						},
						{
							from: /<pre-(js|css|html)>/g,
							to: "<pre class=\"prettyprint lang-$1\"><code>"
						},
						{
							from: /<\/pre-(js|css|html)>/g,
							to: "</code></pre>"
						},
						{
							from: /<pre-id-(js|css|html)\s*id\s*=\s*(["|'])(.*?)\2>/g,
							to: "<div id=\"$3\"><pre class=\"prettyprint lang-$1\"><a class=\"anchor\" href=\"#$3\"><span class=\"fa fa-link\"></span></a><a href=\"#$3\"><code>"
						},
						{
							from: /<\/pre-id-(js|css|html)>/g,
							to: "</code></a></pre></div>"
						}
					]
				},
				files: [
					{
						expand: true,
						src: ["**/*.t"],
						dest: "./",
						ext: ".html",
						extDot: "last"
					}
				]
			}
		}
	});
	/*
	    we register task without any plugins for building process. We use only watch to monitor the changes.
		we makes some substitutions of input *.t files and
		generate the output html files.
	*/
	grunt.registerMultiTask("sitebuild", "Build the site by replacing the texts patterns.", function () {
		var options = this.options({
			encoding: grunt.file.defaultEncoding,
			separator: grunt.util.linefeed
		});
		this.files.forEach(function (f) {
			var src = f.src.filter(function(filepath) {
				if (!grunt.file.exists(filepath)) {
					grunt.log.warn("Source file \"" + filepath + "\" not found.");
					return false;
				} else {
					//grunt.log.writeln("filter filepath=" + filepath);
					return true;
				}
			}).map(function(filepath) {
				grunt.verbose.writeln("In map. Reading lines of file=\"" + filepath + "\" to normilize CRLF");
				return grunt.file.read(filepath);
			}).join(grunt.util.normalizelf(options.separator || grunt.util.linefeed));

			//grunt.log.writeln("f.dest=" + f.dest);
			var destText = src.replace("<!--@@commonHeadIncludes-->", grunt.file.read(options.commonHeadIncludes));

			// process menuHeader
			var menuHeader = grunt.file.read(options.menuHeader);
			var pathDeep = f.dest.split("/").length, i, rootPath = [];
			for (i = 1; i < pathDeep; i++) {
				rootPath.push("../");
			}
			menuHeader = menuHeader.replace(/~\//g, rootPath.join(""));
			destText = destText.replace("<!--@@menuHeader-->", menuHeader);

			destText = destText.replace(/(`)(((?!`)[\s\S])*)(`)/gim,
				function (match, p1, p2/*, p3, p4, offset, string*/) {
					//grunt.log.writeln('!!!replace!!! arguments.length=', arguments.length);
					//grunt.log.writeln('!!!replace!!! p1="' + p1 + '", p2="' + p2 +
					//	'", p3="' + p3 + '", p4="' + p4 + '", offset="' + offset + '"');
					return "<l-js>" + p2 + "</l-js>";
				}
			);

			var shortcut;
			for (i = 0; i < options.shortcuts.length; i++) {
				shortcut = options.shortcuts[i];
				grunt.verbose.writeln("replacing from=\"" + shortcut.from + "\" to=\"" + shortcut.to + "\".");
				destText = destText.replace(shortcut.from, shortcut.to);
			}

			// escape "<", ">", "&" to "&lt;", "&gt;" and "&amp;" in the text between
			// <pre- and </pre- (skipping the first > which closes <pre-xxx> tag).
			// One can consider to escape "\"", "'" and "\/" to "&quot;", "&#39;", "&#47;" additioonally.
			destText = destText.replace(/(<code[^>]*>)(((?!<\/code>)[\s\S])*)(<\/code>)/gim,
				function (match, p1, p2, p3, p4/*, offset, string*/) {
					//grunt.log.writeln('!!!replace!!! arguments.length=', arguments.length);
					//grunt.log.writeln('!!!replace!!! p1="' + p1 + '", p2="' + p2 +
					//	'", p3="' + p3 + '", p4="' + p4 + '", offset="' + offset + '"');
					return p1 +
						p2.replace(/&/g, "&amp;")
							.replace(/"/g, "&quot;")
							.replace(/</g, "&lt;")
							.replace(/>/g, "&gt;") +
						p4;
				}
			);
			grunt.file.write(f.dest, destText);
			grunt.log.writeln("The file \"" + f.dest + "\" is written.");
		});
		grunt.log.ok();
	});
	grunt.loadNpmTasks("grunt-contrib-uglify");
	grunt.loadNpmTasks("grunt-text-replace");
	grunt.loadNpmTasks("grunt-contrib-watch");
	grunt.loadNpmTasks("grunt-critical");
	grunt.registerTask("default", ["eslint", "uglify:all", "sitebuild", "critical", "replace"]);
};
