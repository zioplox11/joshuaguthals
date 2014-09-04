var Portfolio = Backbone.Model.extend({

  });

var PortfolioView = Backbone.View.extend({

  initialize: function(){
  },

  events: {
    "click .portfolio" : "renderCollectionView",
    "mouseover .photo-descr": 'showDescription',
    "mouseout .photos-portfolio": 'hideDescription',
    "click .back-to-top": 'backToTop'
  },

  renderPortfolioView: function(){
    var strangeTemplateGlitch =  _.template($("#viewPortfolio").html());
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
    $(event.target).css("border", "1px solid rgba(51, 16 , 169, .5  )").fadeIn(200);
    $(event.target).siblings('.photo-descr-kid').children().fadeIn(600);
  },

  hideDescription: function(event){
    $(event.target).css("border", "1px solid rgba(127,  98,  124, .1 )");
    $(event.target).siblings('.photo-descr-kid').children().fadeOut();
  },

  renderCollectionView: function(){
    this.renderPortfolioView();
    var Ted = Backbone.Model.extend({
      urlRoot: '/web_projects/'
    });
    var portfolio = new Ted();
    var PortfolioList = Backbone.Collection.extend({
      model: Ted
    });
    var that = this;
    portfolioList = new PortfolioList();
    portfolioList.url = '/web_projects/list'
    var portfolioWorld =  _.template($("#view_portfolio").html());
    portfolioList.fetch().complete(function(){
        var pigeon = $(".allPortfolios");
        var getPosting = $(".allPortfolioCollection");
        getPosting.html(portfolioWorld(portfolioList.toJSON()[0]));
        getPosting.hide();
        pigeon.append(getPosting);
        getPosting.fadeIn(1000);
        that.backToTop();
    });
  }

});
