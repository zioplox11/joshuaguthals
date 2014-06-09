var router;
var hobbiesView, hobbies;
var favouriteThingsView, favouriteThings;
var aboutMeView, aboutMe;

var AppRouter = Backbone.Router.extend({

  initialize: function(){
    router = this;
    hobbies = new Hobbies();
    hobbiesView = new HobbiesView({model: hobbies, el: $('#main-profile')});
    favouriteThings = new FavouriteThings();
    favouriteThingsView = new FavouriteThingsView({model: favouriteThings, el: $('#main-profile')});
    aboutMe = new AboutMe();
    aboutMeView = new AboutMeView({model: aboutMe, el: $('#main-profile')});
  },

  routes: {
    "hobbies"              : "myHobbies",
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

  myHobbies: function(){
    var myHeading = $('.hobbies');
    var myHref = $('.hobbyHref');
    router.prepareNewView(myHeading, myHref);
    hobbiesView.renderHobbiesView();
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
  },

  myFavouriteThings: function() {
    var myHeading = $('.favourite-things');
    var myHref = $('.faveHref');
    router.prepareNewView(myHeading, myHref);
    favouriteThingsView.renderFavouriteThingsView();
  }

});


$(function(){
  new AppRouter();
  Backbone.history.start();
});
