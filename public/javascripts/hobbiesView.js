

var Hobbies = Backbone.Model.extend({

});

var HobbiesView = Backbone.View.extend({

  initialize: function(){
  },

  events: {
    "click .hobbies" : "renderHobbiesView",
  },

  renderHobbiesView: function(){
    var strangeTemplateGlitch =  _.template($("#viewHobbies").html());
    this.$el.empty();
    this.$el.html(strangeTemplateGlitch(this.model.toJSON()));
  },

});






