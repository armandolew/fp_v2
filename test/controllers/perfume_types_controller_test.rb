require 'test_helper'

class PerfumeTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @perfume_type = perfume_types(:one)
  end

  test "should get index" do
    get perfume_types_url
    assert_response :success
  end

  test "should get new" do
    get new_perfume_type_url
    assert_response :success
  end

  test "should create perfume_type" do
    assert_difference('PerfumeType.count') do
      post perfume_types_url, params: { perfume_type: { name: @perfume_type.name } }
    end

    assert_redirected_to perfume_type_url(PerfumeType.last)
  end

  test "should show perfume_type" do
    get perfume_type_url(@perfume_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_perfume_type_url(@perfume_type)
    assert_response :success
  end

  test "should update perfume_type" do
    patch perfume_type_url(@perfume_type), params: { perfume_type: { name: @perfume_type.name } }
    assert_redirected_to perfume_type_url(@perfume_type)
  end

  test "should destroy perfume_type" do
    assert_difference('PerfumeType.count', -1) do
      delete perfume_type_url(@perfume_type)
    end

    assert_redirected_to perfume_types_url
  end
end
