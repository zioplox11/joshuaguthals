  var AboutMe = Backbone.Model.extend({

  });

var AboutMeView = Backbone.View.extend({

  initialize: function(){
    // this.renderCollectionView();
  },

  events: {
    "click .about-me" : "renderCollectionView",
    "mouseover .cabbage": 'showDescription',
    "mouseout .photos": 'hideDescription',
    "click .back-to-top": 'backToTop'
  },

  renderAboutMeView: function(){
    var strangeTemplateGlitch =  _.template($("#viewAboutMe").html());
    this.$el.empty();
    this.$el.html(strangeTemplateGlitch(this.model.toJSON()));
    this.$el.show();
  },

  backToTop: function(){
    $('html, body').animate({
          scrollTop: $("#hOpener").offset().top
        }, 1400);
  },

  showDescription: function(event){
    $(event.target).css("border", "1px solid rgba(247, 62  ,70    ,.6)").fadeIn(200);
    $(event.target).siblings('.cabbage-kid').children().fadeIn(600);
  },

  hideDescription: function(event){
    $(event.target).css("border", "1px solid rgba(127,  98,  124, .1 )");
    $(event.target).siblings('.cabbage-kid').children().fadeOut();
  },

  renderCollectionView: function(){
    this.renderAboutMeView();
    var Ted = Backbone.Model.extend({
      urlRoot: '/about_mes/'
    });
    var aboutMe = new Ted();
    var AboutMeList = Backbone.Collection.extend({
      model: Ted
    });
    var that = this;
    aboutMeList = new AboutMeList();
    aboutMeList.url = '/about_mes/list'
    var aboutMeWorld =  _.template($("#view_about_me").html());
    aboutMeList.fetch().complete(function(){
        // $(".allAboutMes").remove();
        var pigeon = $(".allAboutMes");
        var getPosting = $(".allAboutMeCollection");
        getPosting.html(aboutMeWorld(aboutMeList.toJSON()[0]));
        getPosting.hide();
        pigeon.append(getPosting);
        getPosting.fadeIn(1000);
        that.backToTop();
    });
  }

});

