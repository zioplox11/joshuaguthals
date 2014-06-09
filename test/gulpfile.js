// include gulp
var gulp = require('gulp');

// include plug-ins
var jshint = require('gulp-jshint');

var changed = require('gulp-changed');

var imagemin = require('gulp-imagemin');

// JS hint task
gulp.task('jshint', function() {
  gulp.src('../public/javascripts/main.js')
    .pipe(jshint())
    .pipe(jshint.reporter('default'));
});


// minify new images
gulp.task('imagemin', function() {
  var imgSrc = '../public/images/new_photos/**/*',
      imgDst = '../public/images/images_1x_2x/minified';

  gulp.src(imgSrc)
    .pipe(changed(imgDst))
    .pipe(imagemin())
    .pipe(gulp.dest(imgDst));
});



// include plug-ins
var minifyHTML = require('gulp-minify-html');

// minify new or changed HTML pages
gulp.task('htmlpage', function() {
  var htmlSrc = '../public/*.html',
      htmlDst = './build';

  gulp.src(htmlSrc)
    .pipe(changed(htmlDst))
    .pipe(minifyHTML())
    .pipe(gulp.dest(htmlDst));
});
