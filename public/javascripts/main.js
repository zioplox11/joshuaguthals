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

  prepareNewView: function(newView){
    $('#main-profile').children().hide();
  },

  myHobbies: function(){
    router.prepareNewView();
    $('.hobbies').css('text-decoration', 'underline');
    $('.hobbies').css('font-size', '1.2em');
    hobbiesView.renderHobbiesView();
  },

  myAboutMe: function() {
    router.prepareNewView();
    console.log("yoyoyoyo");
    $('.about-me').css('text-decoration', 'underline');
    $('.about-me').css('font-size', '1.2em');
    aboutMeView.renderAboutMeView();
  },

  myPorfolio: function() {
  },

  myFavouriteThings: function() {
    router.prepareNewView();
    $('.favourite-things').css('text-decoration', 'underline');
    $('.favourite-things').css('font-size', '1.2em');
    favouriteThingsView.renderFavouriteThingsView();
  }

});


$(function(){
  new AppRouter();
  Backbone.history.start();
});
