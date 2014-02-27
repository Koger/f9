class CirrItem < ActiveRecord::Base
  set_table_name  :cirr_item
  set_primary_key :cirr_item_id

  # Relationships
  

  # Constraints
    def self.possible_values_for_inc_in_card
    "true, false"
  end
  validates_inclusion_of :inc_in_card,
                         :in      => possible_values_for_inc_in_card, 
                         :message => "is not one of (#{possible_values_for_inc_in_card.join(', ')})"

    def self.possible_values_for_print_demoiselle
    "true, false"
  end
  validates_inclusion_of :print_demoiselle,
                         :in      => possible_values_for_print_demoiselle, 
                         :message => "is not one of (#{possible_values_for_print_demoiselle.join(', ')})"

  validates_numericality_of :teacher_id, :hours_self_instruct, {:allow_nil=>true}
  validates_numericality_of :speciality_id, :subj_id, :dept_id, :sess_id, :cmp_id, :train_level_id, :edu_form_id, :qty_hours, :control_type, :hours_lec, :hours_lab, :hours_exers, :hours_proj, :control_work_qty
  validates_presence_of :speciality_id, :subj_id, :dept_id, :sess_id, :cmp_id, :train_level_id, :edu_form_id, :qty_hours, :control_type, :hours_lec, :hours_lab, :hours_exers, :hours_proj, :ects_credits, :control_work_qty, :cirr_item_ins_date, :cirr_item_ins_time, :cirr_item_edt_date, :cirr_item_edt_time
  validates_uniqueness_of :speciality_id, :subj_id, :sess_id, :cmp_id, :train_level_id, :edu_form_id, :control_type
end

