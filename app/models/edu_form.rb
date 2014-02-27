class EduForm < ActiveRecord::Base
  set_table_name  :edu_form
  set_primary_key :edu_form_id

  # Relationships
  

  # Constraints
  validates_numericality_of :smstr_qty_in_ayear, {:allow_nil=>true}
  validates_numericality_of :smstr_bach
  validates_presence_of :edu_form_name, :smstr_bach
  validates_uniqueness_of :edu_form_name
end

