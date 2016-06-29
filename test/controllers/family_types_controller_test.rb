require 'test_helper'

class FamilyTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @family_type = family_types(:one)
  end

  test "should get index" do
    get family_types_url
    assert_response :success
  end

  test "should get new" do
    get new_family_type_url
    assert_response :success
  end

  test "should create family_type" do
    assert_difference('FamilyType.count') do
      post family_types_url, params: { family_type: { name: @family_type.name } }
    end

    assert_redirected_to family_type_url(FamilyType.last)
  end

  test "should show family_type" do
    get family_type_url(@family_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_family_type_url(@family_type)
    assert_response :success
  end

  test "should update family_type" do
    patch family_type_url(@family_type), params: { family_type: { name: @family_type.name } }
    assert_redirected_to family_type_url(@family_type)
  end

  test "should destroy family_type" do
    assert_difference('FamilyType.count', -1) do
      delete family_type_url(@family_type)
    end

    assert_redirected_to family_types_url
  end
end
