require 'test_helper'

class PoztsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pozt = pozts(:one)
  end

  test "should get index" do
    get pozts_url
    assert_response :success
  end

  test "should get new" do
    get new_pozt_url
    assert_response :success
  end

  test "should create pozt" do
    assert_difference('Pozt.count') do
      post pozts_url, params: { pozt: { body: @pozt.body, title: @pozt.title, user_id: @pozt.user_id } }
    end

    assert_redirected_to pozt_url(Pozt.last)
  end

  test "should show pozt" do
    get pozt_url(@pozt)
    assert_response :success
  end

  test "should get edit" do
    get edit_pozt_url(@pozt)
    assert_response :success
  end

  test "should update pozt" do
    patch pozt_url(@pozt), params: { pozt: { body: @pozt.body, title: @pozt.title, user_id: @pozt.user_id } }
    assert_redirected_to pozt_url(@pozt)
  end

  test "should destroy pozt" do
    assert_difference('Pozt.count', -1) do
      delete pozt_url(@pozt)
    end

    assert_redirected_to pozts_url
  end
end
