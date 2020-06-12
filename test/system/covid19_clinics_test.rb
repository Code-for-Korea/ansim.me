require "application_system_test_case"

class Covid19ClinicsTest < ApplicationSystemTestCase
  setup do
    @covid19_clinic = covid19_clinics(:one)
  end

  test "visiting the index" do
    visit covid19_clinics_url
    assert_selector "h1", text: "Covid19 Clinics"
  end

  test "creating a Covid19 clinic" do
    visit covid19_clinics_url
    click_on "New Covid19 Clinic"

    fill_in "Address", with: @covid19_clinic.address
    fill_in "Distring", with: @covid19_clinic.distring
    fill_in "Latitude", with: @covid19_clinic.latitude
    fill_in "Longitude", with: @covid19_clinic.longitude
    fill_in "Name", with: @covid19_clinic.name
    fill_in "Phone", with: @covid19_clinic.phone
    fill_in "Province", with: @covid19_clinic.province
    check "Sampling" if @covid19_clinic.sampling
    click_on "Create Covid19 clinic"

    assert_text "Covid19 clinic was successfully created"
    click_on "Back"
  end

  test "updating a Covid19 clinic" do
    visit covid19_clinics_url
    click_on "Edit", match: :first

    fill_in "Address", with: @covid19_clinic.address
    fill_in "Distring", with: @covid19_clinic.distring
    fill_in "Latitude", with: @covid19_clinic.latitude
    fill_in "Longitude", with: @covid19_clinic.longitude
    fill_in "Name", with: @covid19_clinic.name
    fill_in "Phone", with: @covid19_clinic.phone
    fill_in "Province", with: @covid19_clinic.province
    check "Sampling" if @covid19_clinic.sampling
    click_on "Update Covid19 clinic"

    assert_text "Covid19 clinic was successfully updated"
    click_on "Back"
  end

  test "destroying a Covid19 clinic" do
    visit covid19_clinics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Covid19 clinic was successfully destroyed"
  end
end
