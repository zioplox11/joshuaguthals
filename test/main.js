var router;
var hobbiesView, hobbies;
var favouriteThingsView, favouriteThings;
var aboutMeView, aboutMe;

var AppRouter = Backbone.Router.extend({

  initialize: function(){
    router = this;
    photography = new Hobbies();
    photosView = new HobbiesView({model: photography, el: $('#main-profile')});
    favouriteThings = new FavouriteThings();
    favouriteThingsView = new FavouriteThingsView({model: favouriteThings, el: $('#main-profile')});
    aboutMe = new AboutMe();
    aboutMeView = new AboutMeView({model: aboutMe, el: $('#main-profile')});
  },

  routes: {
    "photography"              : "myPhotos",
    "aboutMe"              :   "myAboutMe",
    "portfolio"           :   "myPorfolio",
    "favouriteThings"  : "myFavouriteThings",
  },

  prepareNewView: function(heading, href){
    $('#main-profile').children().hide();
    router.clearClicks();
    var thisHeading = $(heading);
    var thisHref = $(href);
    thisHeading.css('text-decoration', 'underline');
    thisHref.css('color', 'rgba(210,60,90,0.8)');
  },

  myPhotos: function(){
    var myHeading = $('.photography');
    var myHref = $('.photoHref');
    router.prepareNewView(myHeading, myHref);
    photosView.renderHobbiesView();
  },

  clearClicks: function(){
    $('a.colorClick').css('color','rgba(101,101,108,1');
    $('.clicks').css('text-decoration', 'none');
    $('.clicks').css('font-size', '13px');
  },

  myAboutMe: function() {
    var myHeading = $('.about-me');
    var myHref = $('.aboutHref');
    router.prepareNewView(myHeading, myHref);
    aboutMeView.renderAboutMeView();
  },

  myPorfolio: function() {
  }

});


$(function(){
  new AppRouter();
  Backbone.history.start();
});
