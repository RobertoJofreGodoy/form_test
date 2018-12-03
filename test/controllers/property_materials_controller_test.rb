require 'test_helper'

class PropertyMaterialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @property_material = property_materials(:one)
  end

  test "should get index" do
    get property_materials_url
    assert_response :success
  end

  test "should get new" do
    get new_property_material_url
    assert_response :success
  end

  test "should create property_material" do
    assert_difference('PropertyMaterial.count') do
      post property_materials_url, params: { property_material: { materail_id: @property_material.materail_id, property_id: @property_material.property_id } }
    end

    assert_redirected_to property_material_url(PropertyMaterial.last)
  end

  test "should show property_material" do
    get property_material_url(@property_material)
    assert_response :success
  end

  test "should get edit" do
    get edit_property_material_url(@property_material)
    assert_response :success
  end

  test "should update property_material" do
    patch property_material_url(@property_material), params: { property_material: { materail_id: @property_material.materail_id, property_id: @property_material.property_id } }
    assert_redirected_to property_material_url(@property_material)
  end

  test "should destroy property_material" do
    assert_difference('PropertyMaterial.count', -1) do
      delete property_material_url(@property_material)
    end

    assert_redirected_to property_materials_url
  end
end
