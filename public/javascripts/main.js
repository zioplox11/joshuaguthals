var router;
var hobbiesView, hobbies;

var AppRouter = Backbone.Router.extend({

  initialize: function(){
    router = this;
    hobbies = new Hobbies();
    hobbiesView = new HobbiesView({model: hobbies, el: $('#main-profile')});
  },

  routes: {
    "hobbies"              : "myHobbies",
    "family"              :   "myFamily",
    "portfolio"           :   "myPorfolio",
    "favouriteThings"  : "myFavouriteThings",
  },

  prepareNewView: function(newView){
    $('#main-profile').children().hide();
  },

  myHobbies: function(){
    console.log("hello");
    router.prepareNewView();
    $('.hobbies').css('text-decoration', 'underline');
    $('.hobbies').css('font-size', '1.2em');
    hobbiesView.renderHobbiesView();
  },

  myFamily: function() {
  },

  myPorfolio: function() {
  },

  myFavouriteThings: function() {
    console.log("hello");
    router.prepareNewView();
    $('.favourite-things').css('text-decoration', 'underline');
    $('.hobbies').css('font-size', '1.2em');
    hobbiesView.renderHobbiesView();
  }

});


$(function(){
  new AppRouter();
  Backbone.history.start();
});
