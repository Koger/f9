class Building < ActiveRecord::Base
  set_table_name  :building
  set_primary_key :building_id

  # Relationships
  

  # Constraints
  validates_numericality_of :building_type_id
  validates_presence_of :building_type_id
  validates_uniqueness_of :building_code, :building_name
end

