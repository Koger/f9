class Worktype < ActiveRecord::Base
  set_table_name  :worktype
  set_primary_key :no_primary_key

  # Relationships
  

  # Constraints
  validates_numericality_of :wtypeid, {:allow_nil=>true}
end

