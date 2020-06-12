require "application_system_test_case"

class MaskstoresTest < ApplicationSystemTestCase
  setup do
    @maskstore = maskstores(:one)
  end

  test "visiting the index" do
    visit maskstores_url
    assert_selector "h1", text: "Maskstores"
  end

  test "creating a Maskstore" do
    visit maskstores_url
    click_on "New Maskstore"

    fill_in "Address", with: @maskstore.address
    fill_in "Code", with: @maskstore.code
    fill_in "Latitude", with: @maskstore.latitude
    fill_in "Longitude", with: @maskstore.longitude
    fill_in "Name", with: @maskstore.name
    fill_in "Type", with: @maskstore.type
    click_on "Create Maskstore"

    assert_text "Maskstore was successfully created"
    click_on "Back"
  end

  test "updating a Maskstore" do
    visit maskstores_url
    click_on "Edit", match: :first

    fill_in "Address", with: @maskstore.address
    fill_in "Code", with: @maskstore.code
    fill_in "Latitude", with: @maskstore.latitude
    fill_in "Longitude", with: @maskstore.longitude
    fill_in "Name", with: @maskstore.name
    fill_in "Type", with: @maskstore.type
    click_on "Update Maskstore"

    assert_text "Maskstore was successfully updated"
    click_on "Back"
  end

  test "destroying a Maskstore" do
    visit maskstores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Maskstore was successfully destroyed"
  end
end
