  var AboutMe = Backbone.Model.extend({

  });

var AboutMeView = Backbone.View.extend({

  initialize: function(){
  },

  events: {
    "click .about-me" : "renderAboutMeView",
  },

  renderAboutMeView: function(){
    var strangeTemplateGlitch =  _.template($("#viewAboutMe").html());
    this.$el.empty();
    console.log('empty');
    this.$el.html(strangeTemplateGlitch(this.model.toJSON()));
  },

});

