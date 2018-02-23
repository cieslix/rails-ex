require 'test_helper'

class GomokusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gomoku = gomokus(:one)
  end

  test "should get index" do
    get gomokus_url
    assert_response :success
  end

  test "should get new" do
    get new_gomoku_url
    assert_response :success
  end

  test "should create gomoku" do
    assert_difference('Gomoku.count') do
      post gomokus_url, params: { gomoku: { data: @gomoku.data } }
    end

    assert_redirected_to gomoku_url(Gomoku.last)
  end

  test "should show gomoku" do
    get gomoku_url(@gomoku)
    assert_response :success
  end

  test "should get edit" do
    get edit_gomoku_url(@gomoku)
    assert_response :success
  end

  test "should update gomoku" do
    patch gomoku_url(@gomoku), params: { gomoku: { data: @gomoku.data } }
    assert_redirected_to gomoku_url(@gomoku)
  end

  test "should destroy gomoku" do
    assert_difference('Gomoku.count', -1) do
      delete gomoku_url(@gomoku)
    end

    assert_redirected_to gomokus_url
  end
end
