class DeptPer < ActiveRecord::Base
  set_primary_key :dept_pers_id

  # Relationships
  

  # Constraints
  validates_numericality_of :dept_position_id, {:allow_nil=>true}
  validates_numericality_of :dept_id, :card_id, :person_type
  validates_presence_of :dept_id, :card_id, :person_type, :dept_pers_ins_date, :dept_pers_edt_date, :dept_pers_edt_time, :dept_pers_ins_time
  validates_uniqueness_of :dept_id, :card_id
end

