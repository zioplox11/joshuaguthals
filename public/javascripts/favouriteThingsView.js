  var FavouriteThings = Backbone.Model.extend({

  });

  var FavouriteThingsView = Backbone.View.extend({

    // el: $('#main-profile'),

    initialize: function(){
    },

    events: {
      "click .favorite-things" : "renderFavouriteThingsView",
    },

    renderFavouriteThingsView: function(){
      var strangeTemplateGlitch =  _.template($("#viewFavouriteThings").html());
      this.$el.empty();
      this.$el.html(strangeTemplateGlitch(this.model.toJSON()));
      // this.$viewEl = $("<div>").html(this.viewHobbies(this.model.toJSON()));
      // this.$el.append(this.$viewEl);
      console.log('frogggs');
      // var test = $('<div>').html('<h1>HEYYY</h1>');
      //       debugger;
      // this.$el.append(test);


    },

  });
