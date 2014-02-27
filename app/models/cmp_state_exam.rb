class CmpStateExam < ActiveRecord::Base
  set_table_name  :cmp_state_exam
  set_primary_key :cmp_se_id

  # Relationships
  

  # Constraints
  validates_numericality_of :cmp_id
  validates_presence_of :cmp_id, :se_ins_date, :se_edt_date
end

