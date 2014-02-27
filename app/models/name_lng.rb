class NameLng < ActiveRecord::Base
  set_table_name  :name_lng
  set_primary_key :name_id

  # Relationships
  

  # Constraints
  validates_numericality_of :lng_id
  validates_presence_of :lng_id
  validates_uniqueness_of :lng_id, :name
end

