Entity.SuperEntitiesRoute = Ember.Route.extend({
  setupController: function(controller) {
    controller.set('content', Entity.SuperEntity.find());
  },
  renderTemplate: function() {
    this.render('super_entities', {into: 'application'});
  }
});

Entity.SuperEntityRoute = Ember.Route.extend({
  model: function(params) {
    return Entity.SuperEntity.find(params.super_entity_id);
  },
  renderTemplate: function() {
    this.render('super_entity', {into: 'application'});
  }
});
