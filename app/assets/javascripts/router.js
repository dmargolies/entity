//Entity.Router.map(function() {
//  this.resource("super_entities", function() {
//    this.route("super_entity", {path: "/super_entities/:super_entity_id"});
//  });
//});



Entity.Router.map(function() {
  this.route('about');
  this.route('home');//eventually this needs to also be the index route
  this.route('contact');
  this.resource('super_entities', { path: '/super_entities' }, function() {
    this.resource('super_entity', {path: ':super_entity_id'});
  });
});



//Entity.Router.map(function() {
//  this.route("super_entities", {path: "/super_entities"});
//  this.route("super_entity", {path: "/super_entities/:super_entity_id"});
//});
