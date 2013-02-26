Entity.ApplicationRoute = Ember.Route.extend({
  setupController: function(controller) {
    controller.set('title', 'Application Home');
  }
});
