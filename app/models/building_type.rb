class BuildingType < ActiveRecord::Base
  set_table_name  :building_type
  set_primary_key :building_type_id

  # Relationships
  

  # Constraints
  validates_uniqueness_of :building_type_name
end

