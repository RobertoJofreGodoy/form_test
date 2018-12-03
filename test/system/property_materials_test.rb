require "application_system_test_case"

class PropertyMaterialsTest < ApplicationSystemTestCase
  setup do
    @property_material = property_materials(:one)
  end

  test "visiting the index" do
    visit property_materials_url
    assert_selector "h1", text: "Property Materials"
  end

  test "creating a Property material" do
    visit property_materials_url
    click_on "New Property Material"

    fill_in "Materail", with: @property_material.materail_id
    fill_in "Property", with: @property_material.property_id
    click_on "Create Property material"

    assert_text "Property material was successfully created"
    click_on "Back"
  end

  test "updating a Property material" do
    visit property_materials_url
    click_on "Edit", match: :first

    fill_in "Materail", with: @property_material.materail_id
    fill_in "Property", with: @property_material.property_id
    click_on "Update Property material"

    assert_text "Property material was successfully updated"
    click_on "Back"
  end

  test "destroying a Property material" do
    visit property_materials_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Property material was successfully destroyed"
  end
end
