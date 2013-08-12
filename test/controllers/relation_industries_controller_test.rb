require 'test_helper'

class RelationIndustriesControllerTest < ActionController::TestCase
  setup do
    @relation_industry = relation_industries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:relation_industries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create relation_industry" do
    assert_difference('RelationIndustry.count') do
      post :create, relation_industry: { industry_id: @relation_industry.industry_id, product_id: @relation_industry.product_id }
    end

    assert_redirected_to relation_industry_path(assigns(:relation_industry))
  end

  test "should show relation_industry" do
    get :show, id: @relation_industry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @relation_industry
    assert_response :success
  end

  test "should update relation_industry" do
    patch :update, id: @relation_industry, relation_industry: { industry_id: @relation_industry.industry_id, product_id: @relation_industry.product_id }
    assert_redirected_to relation_industry_path(assigns(:relation_industry))
  end

  test "should destroy relation_industry" do
    assert_difference('RelationIndustry.count', -1) do
      delete :destroy, id: @relation_industry
    end

    assert_redirected_to relation_industries_path
  end
end
