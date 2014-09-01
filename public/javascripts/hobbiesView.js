

var Hobbies = Backbone.Model.extend({


});

var Hobby = Backbone.Model.extend({

});

var HobbiesView = Backbone.View.extend({

  initialize: function(){
  },

  events: {
    "click .photography": "renderPhotosView",
    "mouseover .photo-descr": 'showDescription',
    "mouseout .photos": 'hideDescription',
    "click .back-to-top": 'backToTop',
  },


  showDescription: function(event){
    $(event.target).siblings('.photo-descr-kid').children().fadeIn(600);
  },

  hideDescription: function(event){
    $(event.target).css("border", "1px solid rgba(127,  98,  124, .1 )");
    $(event.target).siblings('.photo-descr-kid').children().fadeOut();
  },

  backToTop: function(){
    $('html, body').animate({
          scrollTop: $("#hOpener").offset().top
        }, 1400);
  },

  renderPhotosView: function(){
    var photos = 'photography';
    this.clearClicks(photos);
    $('#main-profile').children().hide();
    this.displayHobby(photos);
  },

  displayHobby: function(finder){
    var viewAHobby =  _.template($("#view_photos").html());
    var that = this;
    var myHobby = new Hobby();
    myHobby.urlRoot = '/hobby/' + finder;
    myHobby.fetch().complete(function(){
        $(".thisHobby").remove();
        that.$viewEl = $("<div class='thisHobby'>");
        var bob = that.$viewEl.html(viewAHobby(myHobby.toJSON()));
        bob.hide();
        that.$el.append(bob);
        bob.fadeIn(1000);
        that.backToTop();
    });
  },

  clearClicks: function(finder){
    if (finder === 'kravmaga'){
      finder = 'krav-maga';
    } else if (finder === 'songs'){
      finder = 'song-writing';
    } else if (finder === 'hivplanning'){
      finder = 'hiv-prevention';
    }

    $('.clicks').children().css('color','rgba(101,101,108,1');
    $('.clicks').css('text-decoration', 'none');
    $('.' +finder).css('text-decoration', 'underline');
    $('.' +finder).children().css('color', 'rgba(210,60,90,0.8)');
  },


});






