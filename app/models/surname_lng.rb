class SurnameLng < ActiveRecord::Base
  set_table_name  :surname_lng
  set_primary_key :lng_id

  # Relationships
  

  # Constraints
  validates_numericality_of :surname_id
  validates_presence_of :surname_id
  validates_uniqueness_of :lng_id, :surname
end

