class VCirriculum < ActiveRecord::Base
  set_table_name  :v_cirriculum
  set_primary_key :no_primary_key

  # Relationships
  

  # Constraints
    def self.possible_values_for_inc_in_card
    "true, false"
  end
  validates_inclusion_of :inc_in_card,
                         :in      => possible_values_for_inc_in_card, 
                         :message => "is not one of (#{possible_values_for_inc_in_card.join(', ')})"

  validates_numericality_of :cirr_item_id, :speciality_id, :sess_id, :subj_id, :qty_hours, :control_type, :cmp_id, :dept_id
  validates_presence_of :cirr_item_id, :speciality_id, :sess_id, :subj_id, :qty_hours, :control_type, :cmp_id, :dept_id
end

