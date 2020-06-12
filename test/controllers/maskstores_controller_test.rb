require 'test_helper'

class MaskstoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @maskstore = maskstores(:one)
  end

  test "should get index" do
    get maskstores_url
    assert_response :success
  end

  test "should get new" do
    get new_maskstore_url
    assert_response :success
  end

  test "should create maskstore" do
    assert_difference('Maskstore.count') do
      post maskstores_url, params: { maskstore: { address: @maskstore.address, code: @maskstore.code, latitude: @maskstore.latitude, longitude: @maskstore.longitude, name: @maskstore.name, type: @maskstore.type } }
    end

    assert_redirected_to maskstore_url(Maskstore.last)
  end

  test "should show maskstore" do
    get maskstore_url(@maskstore)
    assert_response :success
  end

  test "should get edit" do
    get edit_maskstore_url(@maskstore)
    assert_response :success
  end

  test "should update maskstore" do
    patch maskstore_url(@maskstore), params: { maskstore: { address: @maskstore.address, code: @maskstore.code, latitude: @maskstore.latitude, longitude: @maskstore.longitude, name: @maskstore.name, type: @maskstore.type } }
    assert_redirected_to maskstore_url(@maskstore)
  end

  test "should destroy maskstore" do
    assert_difference('Maskstore.count', -1) do
      delete maskstore_url(@maskstore)
    end

    assert_redirected_to maskstores_url
  end
end
