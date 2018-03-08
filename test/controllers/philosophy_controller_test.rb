require 'test_helper'

class PhilosophyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get philosophy_index_url
    assert_response :success
  end

end
