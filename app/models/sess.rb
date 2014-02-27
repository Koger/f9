class Sess < ActiveRecord::Base
  set_table_name  :sess
  set_primary_key :cmp_id

  # Relationships
  

  # Constraints
    def self.possible_values_for_inc_in_card
    "true, false"
  end
  validates_inclusion_of :inc_in_card,
                         :in      => possible_values_for_inc_in_card, 
                         :message => "is not one of (#{possible_values_for_inc_in_card.join(', ')})"

    def self.possible_values_for_flg_active
    "true, false"
  end
  validates_inclusion_of :flg_active,
                         :in      => possible_values_for_flg_active, 
                         :message => "is not one of (#{possible_values_for_flg_active.join(', ')})"

  validates_numericality_of :su_sess_dur, :tp_sess_dur, :block_days, :course, {:allow_nil=>true}
  validates_numericality_of :sess_id, :ayear_id
  validates_presence_of :sess_id, :ayear_id, :semestr_name, :sess_type
end

