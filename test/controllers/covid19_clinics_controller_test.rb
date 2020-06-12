require 'test_helper'

class Covid19ClinicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @covid19_clinic = covid19_clinics(:one)
  end

  test "should get index" do
    get covid19_clinics_url
    assert_response :success
  end

  test "should get new" do
    get new_covid19_clinic_url
    assert_response :success
  end

  test "should create covid19_clinic" do
    assert_difference('Covid19Clinic.count') do
      post covid19_clinics_url, params: { covid19_clinic: { address: @covid19_clinic.address, distring: @covid19_clinic.distring, latitude: @covid19_clinic.latitude, longitude: @covid19_clinic.longitude, name: @covid19_clinic.name, phone: @covid19_clinic.phone, province: @covid19_clinic.province, sampling: @covid19_clinic.sampling } }
    end

    assert_redirected_to covid19_clinic_url(Covid19Clinic.last)
  end

  test "should show covid19_clinic" do
    get covid19_clinic_url(@covid19_clinic)
    assert_response :success
  end

  test "should get edit" do
    get edit_covid19_clinic_url(@covid19_clinic)
    assert_response :success
  end

  test "should update covid19_clinic" do
    patch covid19_clinic_url(@covid19_clinic), params: { covid19_clinic: { address: @covid19_clinic.address, distring: @covid19_clinic.distring, latitude: @covid19_clinic.latitude, longitude: @covid19_clinic.longitude, name: @covid19_clinic.name, phone: @covid19_clinic.phone, province: @covid19_clinic.province, sampling: @covid19_clinic.sampling } }
    assert_redirected_to covid19_clinic_url(@covid19_clinic)
  end

  test "should destroy covid19_clinic" do
    assert_difference('Covid19Clinic.count', -1) do
      delete covid19_clinic_url(@covid19_clinic)
    end

    assert_redirected_to covid19_clinics_url
  end
end
