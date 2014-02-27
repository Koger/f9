class Sgroup < ActiveRecord::Base
  set_table_name  :sgroup
  set_primary_key :no_primary_key

  # Relationships
  

  # Constraints
  validates_numericality_of :eduqualid, {:allow_nil=>true}
  validates_numericality_of :grid, :naborid, :specid
  validates_presence_of :grid, :naborid, :specid
end

