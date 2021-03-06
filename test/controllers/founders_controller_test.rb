require 'test_helper'

class FoundersControllerTest < ActionController::TestCase
  setup do
    @founder = founders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:founders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create founder" do
    assert_difference('Founder.count') do
      post :create, founder: { capital_required: @founder.capital_required, company_name: @founder.company_name, description: @founder.description, email_address: @founder.email_address, equity_share: @founder.equity_share, founder_id: @founder.founder_id, image_four: @founder.image_four, image_one: @founder.image_one, image_three: @founder.image_three, image_two: @founder.image_two, industry: @founder.industry, location: @founder.location, name: @founder.name, password_digest: @founder.password_digest, profile_picture: @founder.profile_picture, video: @founder.video, website: @founder.website }
    end

    assert_redirected_to founder_path(assigns(:founder))
  end

  test "should show founder" do
    get :show, id: @founder
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @founder
    assert_response :success
  end

  test "should update founder" do
    patch :update, id: @founder, founder: { capital_required: @founder.capital_required, company_name: @founder.company_name, description: @founder.description, email_address: @founder.email_address, equity_share: @founder.equity_share, founder_id: @founder.founder_id, image_four: @founder.image_four, image_one: @founder.image_one, image_three: @founder.image_three, image_two: @founder.image_two, industry: @founder.industry, location: @founder.location, name: @founder.name, password_digest: @founder.password_digest, profile_picture: @founder.profile_picture, video: @founder.video, website: @founder.website }
    assert_redirected_to founder_path(assigns(:founder))
  end

  test "should destroy founder" do
    assert_difference('Founder.count', -1) do
      delete :destroy, id: @founder
    end

    assert_redirected_to founders_path
  end
end
