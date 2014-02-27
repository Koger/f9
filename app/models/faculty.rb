class Faculty < ActiveRecord::Base
  set_table_name  :faculty
  set_primary_key :no_primary_key

  # Relationships
  

  # Constraints
  validates_numericality_of :school_id, {:allow_nil=>true}
  validates_numericality_of :faculty_id
  validates_presence_of :faculty_id, :faculty_date
end

