  var AboutMe = Backbone.Model.extend({

  });

var AboutMeView = Backbone.View.extend({

  initialize: function(){
    this.renderCollectionView();
  },

  events: {
    "click .about-me" : "renderAboutMeView",
  },

  renderAboutMeView: function(){
    var strangeTemplateGlitch =  _.template($("#viewAboutMe").html());
    this.$el.empty();
    this.$el.html(strangeTemplateGlitch(this.model.toJSON()));
    this.$el.show();
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
    var aboutMeList = new AboutMeList();
    aboutMeList.url = '/about_mes/list'
    var aboutMeWorld =  _.template($("#view_about_me").html());
     var canDo = aboutMeList.fetch();
     debugger;
     console.log(canDo);
  }

});

