class Semestr < ActiveRecord::Base
  set_table_name  :semestr
  set_primary_key :sess_id

  # Relationships
  

  # Constraints
  validates_numericality_of :smstr_course, {:allow_nil=>true}
  validates_numericality_of :smstr_type_id
  validates_presence_of :smstr_type_id
end

