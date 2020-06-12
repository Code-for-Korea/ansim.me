json.extract! covid19_clinic, :id, :province, :distring, :name, :phone, :sampling, :address, :latitude, :longitude, :created_at, :updated_at
json.url covid19_clinic_url(covid19_clinic, format: :json)
