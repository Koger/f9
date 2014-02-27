class Cafedra < ActiveRecord::Base
  set_table_name  :cafedra
  set_primary_key :no_primary_key

  # Relationships
  

  # Constraints
  validates_numericality_of :cafid
  validates_presence_of :cafid
end

