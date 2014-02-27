class Teacher < ActiveRecord::Base
  set_table_name  :teacher
  set_primary_key :no_primary_key

  # Relationships
  

  # Constraints
  validates_numericality_of :card_id, :teacher_id, :dept_id
  validates_presence_of :card_id, :teacher_id, :dept_id
end

