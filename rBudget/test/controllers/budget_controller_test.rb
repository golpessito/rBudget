require 'test_helper'

class BudgetControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get budget_show_url
    assert_response :success
  end

end
