  var FavouriteThings = Backbone.Model.extend({

  });

var FavouriteThingsView = Backbone.View.extend({

  initialize: function(){
  },

  events: {
    "click .favourite-things" : "renderFavouriteThingsView",
  },

  renderFavouriteThingsView: function(){
    var strangeTemplateGlitch =  _.template($("#viewFavouriteThings").html());
    this.$el.empty();
    console.log('empty');
    this.$el.html(strangeTemplateGlitch(this.model.toJSON()));
  },

});

