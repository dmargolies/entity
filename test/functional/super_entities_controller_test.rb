require 'test_helper'

class SuperEntitiesControllerTest < ActionController::TestCase
  setup do
    @super_entity = super_entities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:super_entities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create super_entity" do
    assert_difference('SuperEntity.count') do
      post :create, super_entity: { color: @super_entity.color, element: @super_entity.element, health_points: @super_entity.health_points, hunger_points: @super_entity.hunger_points, life_points: @super_entity.life_points, name: @super_entity.name }
    end

    assert_redirected_to super_entity_path(assigns(:super_entity))
  end

  test "should show super_entity" do
    get :show, id: @super_entity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @super_entity
    assert_response :success
  end

  test "should update super_entity" do
    put :update, id: @super_entity, super_entity: { color: @super_entity.color, element: @super_entity.element, health_points: @super_entity.health_points, hunger_points: @super_entity.hunger_points, life_points: @super_entity.life_points, name: @super_entity.name }
    assert_redirected_to super_entity_path(assigns(:super_entity))
  end

  test "should destroy super_entity" do
    assert_difference('SuperEntity.count', -1) do
      delete :destroy, id: @super_entity
    end

    assert_redirected_to super_entities_path
  end
end
