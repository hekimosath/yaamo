require "application_system_test_case"

class MenusTest < ApplicationSystemTestCase
  setup do
    @menu = menus(:one)
  end

  test "visiting the index" do
    visit menus_url
    assert_selector "h1", text: "Menus"
  end

  test "creating a Menu" do
    visit menus_url
    click_on "New Menu"

    fill_in "Cat main or side", with: @menu.cat_main_or_side
    fill_in "Cat nationality", with: @menu.cat_nationality
    fill_in "Created", with: @menu.created
    fill_in "Materials", with: @menu.materials
    fill_in "Menu name", with: @menu.menu_name
    fill_in "Notes", with: @menu.notes
    fill_in "Reference url", with: @menu.reference_url
    fill_in "Tags", with: @menu.tags
    fill_in "Updated", with: @menu.updated
    click_on "Create Menu"

    assert_text "Menu was successfully created"
    click_on "Back"
  end

  test "updating a Menu" do
    visit menus_url
    click_on "Edit", match: :first

    fill_in "Cat main or side", with: @menu.cat_main_or_side
    fill_in "Cat nationality", with: @menu.cat_nationality
    fill_in "Created", with: @menu.created
    fill_in "Materials", with: @menu.materials
    fill_in "Menu name", with: @menu.menu_name
    fill_in "Notes", with: @menu.notes
    fill_in "Reference url", with: @menu.reference_url
    fill_in "Tags", with: @menu.tags
    fill_in "Updated", with: @menu.updated
    click_on "Update Menu"

    assert_text "Menu was successfully updated"
    click_on "Back"
  end

  test "destroying a Menu" do
    visit menus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Menu was successfully destroyed"
  end
end
