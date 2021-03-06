# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

def load_shelders
  header_ko = %w(지진해일대피소명 지진해일대피소구분 지진해일대피소유형 지진해일대피소유형구분 소재지도로명주소 소재지지번주소 위도 경도 수용가능면적 최대수용인원수 지진해일대피소운영상태 지진해일대피소전화번호 부대편의시설 주민대피지구명 주민대피지구내가구수 주민대피지구내거주인수 주민대피지구내재해약자수 내진적용여부 내진설계등급 해안선이격거리 해발높이 지진대피안내표지판수 긴급대피장소안내표지판수 지진대피로안내표지판수 관리기관명 관리기관전화번호 데이터기준일자)
  header_en = %w(name division type_name type_division road_address depr_address y x max_area max_count status phone etc emergency_area emergency_area_houses emergency_area_people emergency_area_people_vulnerable is_seismic seismic_level distance_to_shore elevation count_earthquake_signs count_emergency_area_signs count_earthquake_road_signs maintenance_agency agency_phone uploaded_at).map{ |x| x.to_sym }

  headers = Hash[header_ko.zip(header_en)]

  Shelter.delete_all

  CSV.foreach('db/shelters.csv', headers: true) do |csv|
    data = {}
    header_ko.each{ |x| data[headers[x]] = csv[x] }
    puts data
    Shelter.create!(data)
  end
end

def load_maskstores
  Maskstore.delete_all

  CSV.foreach('db/maskstores.csv', headers: true) do |csv|
    puts csv.to_h
    Maskstore.create!(csv.to_h)
  end
end

def load_covid19_clinics
  header_ko = %w(연번 시도 시군구 선별진료소 전화번호 검체가능 주소 위도 경도)
  header_en = %w(id province district name phone sampling address latitude longitude)

  headers = Hash[header_ko.zip(header_en)]

  Covid19Clinic.delete_all

  CSV.foreach('db/covid19-clinics.csv', headers: true) do |csv|
    data = {}
    header_ko.each{ |x| data[headers[x]] = csv[x] }
    data['sampling'] = true if data['sampling'] == 'Y'
    data['sampling'] = false if data['sampling'] == 'N'
    puts data
    Covid19Clinic.create!(data)
  end
end

if ENV['LOAD'].present?
  load_shelders if ENV['LOAD'] == 'shelter'
  load_maskstores if ENV['LOAD'] == 'maskstore'
  load_covid19_clinics if ENV['LOAD'] == 'covid19clinic'
else
  load_shelders
  load_maskstores
  load_covid19_clinics
end

