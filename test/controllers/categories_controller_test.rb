require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
  test "should get title:string" do
    get :title:string
    assert_response :success
  end

end
