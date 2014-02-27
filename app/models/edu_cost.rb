class EduCost < ActiveRecord::Base
  set_table_name  :edu_cost
  set_primary_key :edu_cost_id

  # Relationships
  

  # Constraints
  validates_numericality_of :edu_form_id, :speciality_id, :cmp_id, :sess_id, :train_level_id
  validates_presence_of :edu_form_id, :speciality_id, :cmp_id, :sess_id, :train_level_id, :smstr_edu_cost, :edu_cost_ins_date, :edu_cost_edt_date, :edu_cost_ins_time, :edu_cost_edt_time
  validates_uniqueness_of :edu_form_id, :speciality_id, :cmp_id, :sess_id, :train_level_id
end

