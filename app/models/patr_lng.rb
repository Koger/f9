class PatrLng < ActiveRecord::Base
  set_table_name  :patr_lng
  set_primary_key :patr_id

  # Relationships
  

  # Constraints
  validates_numericality_of :lng_id
  validates_presence_of :lng_id
  validates_uniqueness_of :lng_id, :patr
end

