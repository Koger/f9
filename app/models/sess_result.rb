class SessResult < ActiveRecord::Base
  set_table_name  :sess_result
  set_primary_key :sess_result_id

  # Relationships
  

  # Constraints
  validates_numericality_of :cmp_id, :sess_id, :stu_count, :stu_in_academ, :accepted_to_exam, :not_come_good_reason, :not_come_wo_greason, :turn_over_excell, :turn_over_good, :turn_over_mixed, :turn_over_fair, :uns1, :uns2, :uns3, :uns_total
  validates_presence_of :cmp_id, :sess_id, :sess_result_date, :stu_count, :stu_in_academ, :must_sit_exam, :accepted_to_exam, :not_come_good_reason, :not_come_wo_greason, :turn_over_excell, :turn_over_good, :turn_over_mixed, :turn_over_fair, :turn_over_total, :uns1, :uns2, :uns3, :uns_total, :abs_progress
  validates_uniqueness_of :sess_result_id
end

