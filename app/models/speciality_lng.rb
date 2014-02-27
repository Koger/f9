class SpecialityLng < ActiveRecord::Base
  set_table_name  :speciality_lng
  set_primary_key :speciality_id

  # Relationships
  

  # Constraints
  validates_numericality_of :lng_id
  validates_presence_of :lng_id
  validates_uniqueness_of :lng_id, :speciality_name
end

