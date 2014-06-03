

  var Hobbies = Backbone.Model.extend({

  });

  var HobbiesView = Backbone.View.extend({

    // el: $('#main-profile'),

    initialize: function(){
    },

    events: {
      "click .hobbies" : "renderHobbiesView",
    },

    renderHobbiesView: function(){
      var strangeTemplateGlitch =  _.template($("#viewHobbies").html());
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






