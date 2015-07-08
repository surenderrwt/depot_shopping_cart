require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select '.container .col-md-2'
    assert_select 'table'
    assert_select 'h4', 'Your Pragmatic Catalog'
    assert_select '.price', /\$[,\d]+\.\d\d/
    # select elements in the page for testing
  end

end
