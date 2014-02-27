class Contract < ActiveRecord::Base
  set_table_name  :contract
  set_primary_key :contract_id

  # Relationships
  

  # Constraints
  validates_numericality_of :speciality_id, {:allow_nil=>true}
  validates_numericality_of :card_id, :train_level_id, :edu_form_id, :edu_financing_type_id, :faculty_id, :cmp_id, :contract_ins_user_id
  validates_presence_of :card_id, :train_level_id, :edu_form_id, :edu_financing_type_id, :faculty_id, :cmp_id, :contract_status, :last_edit_date, :smstr_edu_cost, :ins_date, :ins_time, :contract_ins_user_id
end

