require 'test_helper'

class LikesControllerTest < ActionDispatch::IntegrationTest
  test "should get favorite" do
    get likes_favorite_url
    assert_response :success
  end

  test "should get new" do
    get likes_new_url
    assert_response :success
  end

  test "should get create" do
    get likes_create_url
    assert_response :success
  end

  test "should get destroy" do
    get likes_destroy_url
    assert_response :success
  end

end
