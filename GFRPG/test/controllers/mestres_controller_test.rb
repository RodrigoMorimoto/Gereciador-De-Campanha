require 'test_helper'

class MestresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mestre = mestres(:one)
  end

  test "should get index" do
    get mestres_url
    assert_response :success
  end

  test "should get new" do
    get new_mestre_url
    assert_response :success
  end

  test "should create mestre" do
    assert_difference('Mestre.count') do
      post mestres_url, params: { mestre: { name: @mestre.name, secret: @mestre.secret } }
    end

    assert_redirected_to mestre_url(Mestre.last)
  end

  test "should show mestre" do
    get mestre_url(@mestre)
    assert_response :success
  end

  test "should get edit" do
    get edit_mestre_url(@mestre)
    assert_response :success
  end

  test "should update mestre" do
    patch mestre_url(@mestre), params: { mestre: { name: @mestre.name, secret: @mestre.secret } }
    assert_redirected_to mestre_url(@mestre)
  end

  test "should destroy mestre" do
    assert_difference('Mestre.count', -1) do
      delete mestre_url(@mestre)
    end

    assert_redirected_to mestres_url
  end
end
