require 'test_helper'

class FrontpagesControllerTest < ActionController::TestCase
  setup do
    @frontpage = frontpages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:frontpages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create frontpage" do
    assert_difference('Frontpage.count') do
      post :create, frontpage: { carousel_caption1: @frontpage.carousel_caption1, carousel_caption2: @frontpage.carousel_caption2, carousel_caption3: @frontpage.carousel_caption3, carousel_lead1: @frontpage.carousel_lead1, carousel_lead2: @frontpage.carousel_lead2, carousel_lead3: @frontpage.carousel_lead3, marketing_desc1: @frontpage.marketing_desc1, marketing_desc2: @frontpage.marketing_desc2, marketing_desc3: @frontpage.marketing_desc3, marketing_heading1: @frontpage.marketing_heading1, marketing_heading2: @frontpage.marketing_heading2, marketing_heading3: @frontpage.marketing_heading3 }
    end

    assert_redirected_to frontpage_path(assigns(:frontpage))
  end

  test "should show frontpage" do
    get :show, id: @frontpage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @frontpage
    assert_response :success
  end

  test "should update frontpage" do
    patch :update, id: @frontpage, frontpage: { carousel_caption1: @frontpage.carousel_caption1, carousel_caption2: @frontpage.carousel_caption2, carousel_caption3: @frontpage.carousel_caption3, carousel_lead1: @frontpage.carousel_lead1, carousel_lead2: @frontpage.carousel_lead2, carousel_lead3: @frontpage.carousel_lead3, marketing_desc1: @frontpage.marketing_desc1, marketing_desc2: @frontpage.marketing_desc2, marketing_desc3: @frontpage.marketing_desc3, marketing_heading1: @frontpage.marketing_heading1, marketing_heading2: @frontpage.marketing_heading2, marketing_heading3: @frontpage.marketing_heading3 }
    assert_redirected_to frontpage_path(assigns(:frontpage))
  end

  test "should destroy frontpage" do
    assert_difference('Frontpage.count', -1) do
      delete :destroy, id: @frontpage
    end

    assert_redirected_to frontpages_path
  end
end
