class EduDoc < ActiveRecord::Base
  set_table_name  :edu_doc
  set_primary_key :edu_doc_id

  # Relationships
  

  # Constraints
  validates_numericality_of :contract_id, {:allow_nil=>true}
  validates_numericality_of :card_id, :train_level_id, :okr_id, :edu_doc_edt_user_id, :edu_doc_ins_user_id
  validates_presence_of :card_id, :train_level_id, :okr_id, :edu_doc_ins_date, :edu_doc_edt_date, :edu_doc_ins_time, :edu_doc_edt_time, :edu_doc_edt_user_id, :edu_doc_ins_user_id
  validates_uniqueness_of :card_id, :train_level_id, :okr_id, :edu_doc_no, :edu_doc_date
end

