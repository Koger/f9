class Lng < ActiveRecord::Base
  set_table_name  :lng
  set_primary_key :lng_id

  # Relationships
  

  # Constraints
  validates_numericality_of :lng_priority
  validates_presence_of :lng_code, :lng_priority
  validates_uniqueness_of :lng_code
end

