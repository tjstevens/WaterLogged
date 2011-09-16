require 'test_helper'

class DrinksControllerTest < ActionController::TestCase
  setup do
    @drink = drinks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:drinks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create drink" do
    assert_difference('Drink.count') do
      post :create, :drink => @drink.attributes
    end

    assert_redirected_to drink_path(assigns(:drink))
  end

  test "should show drink" do
    get :show, :id => @drink.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @drink.to_param
    assert_response :success
  end

  test "should update drink" do
    put :update, :id => @drink.to_param, :drink => @drink.attributes
    assert_redirected_to drink_path(assigns(:drink))
  end

  test "should destroy drink" do
    assert_difference('Drink.count', -1) do
      delete :destroy, :id => @drink.to_param
    end

    assert_redirected_to drinks_path
  end
end
