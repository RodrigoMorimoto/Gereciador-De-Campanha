require 'test_helper'

class VinculosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vinculo = vinculos(:one)
  end

  test "should get index" do
    get vinculos_url
    assert_response :success
  end

  test "should get new" do
    get new_vinculo_url
    assert_response :success
  end

  test "should create vinculo" do
    assert_difference('Vinculo.count') do
      post vinculos_url, params: { vinculo: {  } }
    end

    assert_redirected_to vinculo_url(Vinculo.last)
  end

  test "should show vinculo" do
    get vinculo_url(@vinculo)
    assert_response :success
  end

  test "should get edit" do
    get edit_vinculo_url(@vinculo)
    assert_response :success
  end

  test "should update vinculo" do
    patch vinculo_url(@vinculo), params: { vinculo: {  } }
    assert_redirected_to vinculo_url(@vinculo)
  end

  test "should destroy vinculo" do
    assert_difference('Vinculo.count', -1) do
      delete vinculo_url(@vinculo)
    end

    assert_redirected_to vinculos_url
  end
end
