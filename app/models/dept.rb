class Dept < ActiveRecord::Base
  set_table_name  :dept
  set_primary_key :dept_id

  # Relationships
  

  # Constraints
  validates_numericality_of :faculty_id, :dept_type_id, {:allow_nil=>true}
  validates_presence_of :dept_ins_date
  validates_uniqueness_of :dept_id
end

