class Edu < ActiveRecord::Base
  set_table_name  :edu
  set_primary_key :edu_id

  # Relationships
  

  # Constraints
    def self.possible_values_for_mark
    "true, false"
  end
  validates_inclusion_of :mark,
                         :in      => possible_values_for_mark, 
                         :message => "is not one of (#{possible_values_for_mark.join(', ')})"

    def self.possible_values_for_sess_respite
    "true, false"
  end
  validates_inclusion_of :sess_respite,
                         :in      => possible_values_for_sess_respite, 
                         :message => "is not one of (#{possible_values_for_sess_respite.join(', ')})"

    def self.possible_values_for_accepted_curr
    "true, false"
  end
  validates_inclusion_of :accepted_curr,
                         :in      => possible_values_for_accepted_curr, 
                         :message => "is not one of (#{possible_values_for_accepted_curr.join(', ')})"

    def self.possible_values_for_accepted_next
    "true, false"
  end
  validates_inclusion_of :accepted_next,
                         :in      => possible_values_for_accepted_next, 
                         :message => "is not one of (#{possible_values_for_accepted_next.join(', ')})"

    def self.possible_values_for_accepted_pay_next
    "true, false"
  end
  validates_inclusion_of :accepted_pay_next,
                         :in      => possible_values_for_accepted_pay_next, 
                         :message => "is not one of (#{possible_values_for_accepted_pay_next.join(', ')})"

    def self.possible_values_for_cntrl_chk
    "true, false"
  end
  validates_inclusion_of :cntrl_chk,
                         :in      => possible_values_for_cntrl_chk, 
                         :message => "is not one of (#{possible_values_for_cntrl_chk.join(', ')})"

  validates_numericality_of :no_in_agroup, :debt_prev_qty, {:allow_nil=>true}
  validates_numericality_of :contract_id, :sess_id, :agroup_id, :cmp_id, :train_level_id, :edu_form_id, :edu_financing_type_id, :debt_curr_qty, :debt_total_qty
  validates_presence_of :contract_id, :sess_id, :agroup_id, :cmp_id, :train_level_id, :edu_form_id, :edu_financing_type_id, :inp_action, :out_action, :debt_curr_qty, :debt_total_qty, :edu_ins_date, :edu_ins_time, :edu_edt_date
  validates_uniqueness_of :sess_id, :contract_id, :agroup_id
end

