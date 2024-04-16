require "test_helper"

class FormPageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get form_page_index_url
    assert_response :success
  end
end
