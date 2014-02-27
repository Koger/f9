class ContractCntrl < ActiveRecord::Base
  set_table_name  :contract_cntrl
  set_primary_key :contract_cntrl_id

  # Relationships
  

  # Constraints
    def self.possible_values_for_retrial
    "true, false"
  end
  validates_inclusion_of :retrial,
                         :in      => possible_values_for_retrial, 
                         :message => "is not one of (#{possible_values_for_retrial.join(', ')})"

    def self.possible_values_for_system_edt
    "true, false"
  end
  validates_inclusion_of :system_edt,
                         :in      => possible_values_for_system_edt, 
                         :message => "is not one of (#{possible_values_for_system_edt.join(', ')})"

  validates_numericality_of :upd_user_id, :hundred_score, {:allow_nil=>true}
  validates_numericality_of :contract_id, :cirr_item_id, :sess_id, :control
  validates_presence_of :contract_id, :cirr_item_id, :sess_id, :control, :upd_date, :upd_time, :ins_date, :cc_ins_time
end

