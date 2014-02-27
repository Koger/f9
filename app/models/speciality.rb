class Speciality < ActiveRecord::Base
  set_table_name  :speciality
  set_primary_key :speciality_id

  # Relationships
  

  # Constraints
  validates_numericality_of :dept_id, :next_speciality_id, {:allow_nil=>true}
  validates_numericality_of :spec_id, :start_train_level_id, :start_ayear_id, :stu_qty_lic, :stu_qty_now
  validates_presence_of :spec_id, :start_train_level_id, :start_ayear_id, :speciality_no, :speciality_name, :smstr_edu_cost, :stu_qty_lic, :stu_qty_now
  validates_uniqueness_of :start_ayear_id, :speciality_name, :speciality_no, :start_ayear_id
end

