class Agroup < ActiveRecord::Base
  set_table_name  :agroup
  set_primary_key :agroup_id

  # Relationships
  

  # Constraints
  validates_numericality_of :train_level_id, :close_smstr, :start_smstr, :course, {:allow_nil=>true}
  validates_numericality_of :speciality_id, :actual_sess, :cmp_id, :faculty_id, :start_level, :stu_qty, :foreign_stu_qty
  validates_presence_of :speciality_id, :actual_sess, :cmp_id, :faculty_id, :start_level, :faculty_no, :group_name, :stu_qty, :agroup_ins_date, :agroup_ins_time, :agroup_edt_date, :agroup_edt_time, :foreign_stu_qty
  validates_uniqueness_of :cmp_id, :faculty_no, :group_name
end

