require 'test_helper'

class PerfumesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @perfume = perfumes(:one)
  end

  test "should get index" do
    get perfumes_url
    assert_response :success
  end

  test "should get new" do
    get new_perfume_url
    assert_response :success
  end

  test "should create perfume" do
    assert_difference('Perfume.count') do
      post perfumes_url, params: { perfume: { family_type_id: @perfume.family_type_id, name: @perfume.name, perfume_type_id: @perfume.perfume_type_id, trend: @perfume.trend } }
    end

    assert_redirected_to perfume_url(Perfume.last)
  end

  test "should show perfume" do
    get perfume_url(@perfume)
    assert_response :success
  end

  test "should get edit" do
    get edit_perfume_url(@perfume)
    assert_response :success
  end

  test "should update perfume" do
    patch perfume_url(@perfume), params: { perfume: { family_type_id: @perfume.family_type_id, name: @perfume.name, perfume_type_id: @perfume.perfume_type_id, trend: @perfume.trend } }
    assert_redirected_to perfume_url(@perfume)
  end

  test "should destroy perfume" do
    assert_difference('Perfume.count', -1) do
      delete perfume_url(@perfume)
    end

    assert_redirected_to perfumes_url
  end
end
