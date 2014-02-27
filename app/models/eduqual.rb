class Eduqual < ActiveRecord::Base
  set_table_name  :eduqual
  set_primary_key :no_primary_key

  # Relationships
  

  # Constraints
  validates_numericality_of :eduqualid
  validates_presence_of :eduqualid
end

