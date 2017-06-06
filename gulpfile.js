/*
 *  Gulp File
 */

/*
 *  The following are the gulp plugins used
 ********************************************************
 *		gulp											*
 *		gulp-sass 										*
 *		gulp-plumber 									*
 *		gulp-autoprefixer								*
 *		gulp-sourcemaps 								*
 *														*
 ******************************************************** 
 *
 */

'use strict';

var gulp = require('gulp'),
	sass = require('gulp-sass'),
	plumber = require('gulp-plumber'),
	autoprefixer = require('gulp-autoprefixer'),
	sourcemaps = require('gulp-sourcemaps'),
	browserSync = require('browser-sync').create(),
	reload = browserSync.reload;


/* 
 * Defining our paths here
 * Feel free to change the values accordingly to match your requirement
 */

var PATH = {

    stylesheet: {
        sassFolder: 'App_Themes/MasterTheme/scss',
        cssFolder: 'App_Themes/MasterTheme/Global'
    }

	, javascript: { jsFolder: 'Js' }

};
/* 
 * 
 * Setting the desstination browsers for autoprefixer
 *
 */

var AUTOPREFIXER_BROWSERS = [
	'ie >= 10',
	'ie_mob >= 10',
	'ff >= 30',
	'chrome >= 34',
	'safari >= 7',
	'opera >= 23',
	'ios >= 7',
	'android >= 4.4',
	'bb >= 10'
];

/* 
 * 'styles' task - used to convert scss to css
 */

gulp.task('styles', function () {


	var srcFolder = PATH.stylesheet.sassFolder;

	var destFolder = PATH.stylesheet.cssFolder;

	var sassOptions = {
		outputStyle: 'compact', // shall be expanded,nested,compressed
		precision: 8 // changing to 8, as RockFish's precision is 8
	};

	var plumberErrorHandler = function (error) {

		console.log(error.message);
		this.emit('end');
	};

	return gulp.src(srcFolder + '/*.scss')

		.pipe(plumber({ errorHandler: plumberErrorHandler }))

		.pipe(sourcemaps.init())

		.pipe(sass(sassOptions))

		.pipe(autoprefixer({ browsers: AUTOPREFIXER_BROWSERS }))

		.pipe(sourcemaps.write('./'))

		.pipe(gulp.dest(destFolder));

		//.pipe(browserSync.stream());
});

/* 
 * 'watch' and reload IIS
 */

gulp.task('serve', ['watch'], function () {
	browserSync.init({
	    proxy: "http://localhost:80/brainHack/",
		browser: ["firefox"]
	});

});

// gulp.task('serve', ['watch'], function (done) {
// 	browserSync({
// 		proxy: {
// 			target: "http://localhost:80/g/", // change to your VS IIS Express setting
// 			middleware: function (req, res, next) {
// 				console.log(req.url);
// 				res.setHeader('Access-Control-Allow-Origin', '*');
// 				next();
// 			}
// 		}
// 	}, done);
// });


/* 
 * 'watch' task - all watch tasks goes here
 */

gulp.task('watch', function () {

	// Watch Sass files and execute 'styles' task

	gulp.watch(PATH.stylesheet.sassFolder + '/**/*.scss', ['styles'])

		.on("change", function (event) {

			console.log('[WATCHER FOR SASS] File ' + event.path.replace(/^.*(\\|\/|\:)/, '') + ' was ' + event.type + ', compiling...');

		});
	//gulp.watch("*.html").on("change", browserSync.reload);


});


gulp.task('default', ['styles', 'watch', 'serve']);
