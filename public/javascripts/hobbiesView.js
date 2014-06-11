

var Hobbies = Backbone.Model.extend({


});

var Hobby = Backbone.Model.extend({

});

var HobbiesView = Backbone.View.extend({

  initialize: function(){
  },

  events: {
    "click .hobbies" : "renderHobbiesView",
    "click .photography": "renderPhotosView",
    "click .krav-maga" : "renderKravMagaView",
    "click .song-writing" : "renderSongWritingView",
    "click .sports" : "renderSportsView",
  },

  renderHobbiesView: function(){
    var strangeTemplateGlitch =  _.template($("#viewHobbies").html());
    this.$el.empty();
    this.$el.html(strangeTemplateGlitch(this.model.toJSON()));
  },

  displayHobby: function(finder){
    var viewAHobby =  _.template($("#view_hobby").html());
    var that = this;
    var myHobby = new Hobby();
    myHobby.urlRoot = '/hobby/' + finder;
    myHobby.fetch().complete(function(){
        $(".thisHobby").remove();
        that.$viewEl = $("<div class='thisHobby'>");
        that.$viewEl.html(viewAHobby(myHobby.toJSON()));
        that.$el.append(that.$viewEl);
    });
  },

  renderSportsView: function(){
    var sports = 'sports';
    this.clearClicks(sports);
    this.displayHobby(sports);
  },

  renderPhotosView: function(){
    var photos = 'photography';
    this.clearClicks(photos);
    this.displayHobby(photos);
  },

  renderKravMagaView: function(){
    var krav = 'kravmaga';
    this.clearClicks(krav);
    this.displayHobby(krav);
  },

  renderSongWritingView: function(){
    var songs = 'songs';
    this.clearClicks(songs);
    this.displayHobby(songs);
  },

  clearClicks: function(finder){
    if (finder === 'kravmaga'){
      finder = 'krav-maga';
    } else if (finder === 'songs'){
      finder = 'song-writing';
    }

    $('.hclicks').css('color','rgba(101,101,108,1');
    $('.hclicks').css('text-decoration', 'none');
    $('.' +finder).css('text-decoration', 'underline');
    $('.' +finder).css('color', 'rgba(210,60,90,0.8)');
  },


});






