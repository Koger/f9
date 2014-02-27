class Spec < ActiveRecord::Base
  set_table_name  :spec
  set_primary_key :spec_id

  # Relationships
  

  # Constraints
  validates_numericality_of :stu_qty_lic, :stu_qty_now
  validates_presence_of :spec_name, :stu_qty_lic, :stu_qty_now, :spec_ins_date, :spec_edt_date
  validates_uniqueness_of :spec_no, :spec_name
end

