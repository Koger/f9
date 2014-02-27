class Reviewer < ActiveRecord::Base
  set_table_name  :reviewer
  set_primary_key :no_primary_key

  # Relationships
  

  # Constraints
  validates_numericality_of :persid, {:allow_nil=>true}
end

