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
				"./*.t"
			],
			tasks: ["default"]
		},
		eslint: {
			target: [
				"api-documentation/*.js",
				"examples/*.js",
				"getting-started/*.js",
				"*.js"
			]
		},
		critical: {
			test: {
				options: {
					minify: true
				},
				src: [
					"./api-documentation/index.html",
					"./examples/index.html",
					"./getting-started/index.html",
					"./index.html"
				], //"index.html",
				//dest: "index-critical.html"
				dest: "./"
			}
		},
		sitebuild: {
			all: {
				options: {
					commonHeadIncludes: "commonHeadIncludes.htm",
					menuHeader: "menuHeader.htm",
					shortcuts: [
						{ from: /<l-js>/g, to: "<code class=\"prettyprint lang-js\">" },
						{ from: /<\/l-js>/g, to: "<\/code>" },
						{ from: /<l-css>/g, to: "<code class=\"prettyprint lang-css\">" },
						{ from: /<\/l-css>/g, to: "<\/code>" },
						{ from: /<l-html>/g, to: "<code class=\"prettyprint lang-html\">" },
						{ from: /<\/l-html>/g, to: "<\/code>" },
						{ from: /<pre-js>/g, to: "<pre class=\"prettyprint lang-js\"><code>" },
						{ from: /<\/pre-js>/g, to: "<\/code><\/pre>" },
						{ from: /<pre-css>/g, to: "<pre class=\"prettyprint lang-css\"><code>" },
						{ from: /<\/pre-css>/g, to: "<\/code><\/pre>" },
						{ from: /<pre-html>/g, to: "<pre class=\"prettyprint lang-html\"><code>" },
						{ from: /<\/pre-html>/g, to: "</code><\/pre>" }
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
							.replace(/\"/g, "&quot;")
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
	//grunt.loadNpmTasks("grunt-contrib-watch");
	//grunt.loadNpmTasks("grunt-critical");
	grunt.registerTask("default", ["eslint", "sitebuild", "critical"]);
};
