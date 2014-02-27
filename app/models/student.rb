class Student < ActiveRecord::Base
  set_table_name  :student
  set_primary_key :no_primary_key

  # Relationships
  

  # Constraints
  validates_numericality_of :grid, :studid, :cmp_id
  validates_presence_of :grid, :studid, :cmp_id
end

