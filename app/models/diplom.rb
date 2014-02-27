class Diplom < ActiveRecord::Base
  set_table_name  :diplom
  set_primary_key :diplom_id

  # Relationships
  

  # Constraints
    def self.possible_values_for_cntrl_chk
    "true, false"
  end
  validates_inclusion_of :cntrl_chk,
                         :in      => possible_values_for_cntrl_chk, 
                         :message => "is not one of (#{possible_values_for_cntrl_chk.join(', ')})"

    def self.possible_values_for_diploma_with_honors
    "true, false"
  end
  validates_inclusion_of :diploma_with_honors,
                         :in      => possible_values_for_diploma_with_honors, 
                         :message => "is not one of (#{possible_values_for_diploma_with_honors.join(', ')})"

    def self.possible_values_for_honors_recommend
    "true, false"
  end
  validates_inclusion_of :honors_recommend,
                         :in      => possible_values_for_honors_recommend, 
                         :message => "is not one of (#{possible_values_for_honors_recommend.join(', ')})"

  validates_numericality_of :reviewer_id, :diplom_work_type_id, :diploma_head_id, :seb_id, :protocol_no, :hundred_score, {:allow_nil=>true}
  validates_numericality_of :speciality_id, :agroup_id, :contract_id, :sess_id, :diploma_mark
  validates_presence_of :speciality_id, :agroup_id, :contract_id, :sess_id, :cntrl_chk_date, :diploma_mark
end

