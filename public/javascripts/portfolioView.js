

var Portfolio = Backbone.Model.extend({

});

var PortfolioView = Backbone.View.extend({

  initialize: function(){
  },

  events: {
    "click .portfolio" : "renderPortfolioView",
  },

  renderPortfolioView: function(){
    var strangeTemplateGlitch =  _.template($("#viewPortfolio").html());
    this.$el.empty();
    this.$el.html(strangeTemplateGlitch(this.model.toJSON()));
  },

});
