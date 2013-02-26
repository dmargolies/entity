Entity.Store = DS.Store.extend({
  revision: 11
});

DS.RESTAdapter.configure("plurals", {
  super_entity: "super_entities"
});
