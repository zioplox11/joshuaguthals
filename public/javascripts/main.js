var router;
var hobbiesView, hobbies;
var aboutMeView, aboutMe;
var portfolioView, portfolio;

var AppRouter = Backbone.Router.extend({

  initialize: function(){
    router = this;
    hobbies = new Hobbies();
    hobbiesView = new HobbiesView({model: hobbies, el: $('#main-profile')});
    aboutMe = new AboutMe();
    aboutMeView = new AboutMeView({model: aboutMe, el: $('#main-profile')});
    portfolio = new Portfolio();
    portfolioView = new PortfolioView({model: portfolio, el: $('#main-profile')});
  },

  routes: {
    "aboutMe"           :   "myAboutMe",
    "portfolio"           :   "myPorfolio",
    "photography"    : "hobbyPhotography"
  },

  prepareNewView: function(heading, href){
    $('#main-profile').children().hide();
    router.clearClicks();
    var thisHeading = $(heading);
    var thisHref = $(href);
    thisHeading.css('text-decoration', 'underline');
    thisHref.css('color', 'rgba(210,60,90,0.8)');
  },

  clearClicks: function(){
    $('a.colorClick').css('color','rgba(101,101,108,1');
    $('.clicks').css('text-decoration', 'none');
    $('.clicks').css('font-size', '13px');
  },

  hobbyPhotography: function(){
    hobbiesView.renderPhotosView();
  },

  myAboutMe: function() {
    var myHeading = $('.about-me');
    var myHref = $('.aboutHref');
    router.prepareNewView(myHeading, myHref);
    aboutMeView.renderCollectionView();
  },

  myPorfolio: function() {
    var myHeading = $('.portfolio');
    var myHref = $('.portfolioHref');
    router.prepareNewView(myHeading, myHref);
    portfolioView.renderCollectionView();
  }

});


$(function(){
  new AppRouter();
  Backbone.history.start();
});


