require 'test_helper'

class SheetBsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sheet_b = sheet_bs(:one)
  end

  test "should get index" do
    get sheet_bs_url
    assert_response :success
  end

  test "should get new" do
    get new_sheet_b_url
    assert_response :success
  end

  test "should create sheet_b" do
    assert_difference('SheetB.count') do
      post sheet_bs_url, params: { sheet_b: {  } }
    end

    assert_redirected_to sheet_b_url(SheetB.last)
  end

  test "should show sheet_b" do
    get sheet_b_url(@sheet_b)
    assert_response :success
  end

  test "should get edit" do
    get edit_sheet_b_url(@sheet_b)
    assert_response :success
  end

  test "should update sheet_b" do
    patch sheet_b_url(@sheet_b), params: { sheet_b: {  } }
    assert_redirected_to sheet_b_url(@sheet_b)
  end

  test "should destroy sheet_b" do
    assert_difference('SheetB.count', -1) do
      delete sheet_b_url(@sheet_b)
    end

    assert_redirected_to sheet_bs_url
  end
end
