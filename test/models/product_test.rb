require "test_helper"

class ProductTest < ActiveSupport::TestCase
  test "should get index" do
    get store_index_url
    assert_response :success
  end


end
