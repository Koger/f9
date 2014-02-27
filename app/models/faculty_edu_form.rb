class FacultyEduForm < ActiveRecord::Base
  set_table_name  :faculty_edu_form
  set_primary_key :faculty_edu_form_id

  # Relationships
  

  # Constraints
  validates_numericality_of :faculty_id, :edu_form_id
  validates_presence_of :faculty_id, :edu_form_id
  validates_uniqueness_of :faculty_id, :edu_form_id
end

