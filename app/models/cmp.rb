class Cmp < ActiveRecord::Base
  self.table_name = 'cmp'
  self.primary_key= 'cmp_id'
#  primary_key: "id"

  # Relationships
  belongs_to :faculty

#  attr_accessible :sys_name

  # Constraints
    def self.possible_values_for_prn_sign_on_demoiselle
    "true, false"
  end

  validates_inclusion_of :prn_sign_on_demoiselle,
                         in:      possible_values_for_prn_sign_on_demoiselle,
                         message: "is not one of "
#  validates_inclusion_of :format, in: %w( jpg gif png ), message: "extension %{value} is not included in the list"
    def self.possible_values_for_prn_demoiselle_if_has_prev_debt
    "true, false"
  end

  validates_inclusion_of :prn_demoiselle_if_has_prev_debt,
                         :in      => possible_values_for_prn_demoiselle_if_has_prev_debt, 
                         :message => "is not one of "

    def self.possible_values_for_cmp_closed
    "true, false"
  end
  validates_inclusion_of :cmp_closed,
                         :in      => possible_values_for_cmp_closed, 
                         :message => "is not one of "

    def self.possible_values_for_prn_no_on_demoiselle
    "true, false"
  end
  validates_inclusion_of :prn_no_on_demoiselle,
                         :in      => possible_values_for_prn_no_on_demoiselle, 
                         :message => "is not one of "

    def self.possible_values_for_cmp_uses_ects
    "true, false"
  end
  validates_inclusion_of :cmp_uses_ects,
                         :in      => possible_values_for_cmp_uses_ects, 
                         :message => "is not one of "

  validates_numericality_of :course, {:allow_nil=>true}
  validates_numericality_of :ayear_id, :faculty_id, :actual_sess, :train_level_id, :edu_form_id, :smstr_qty, :demoiselle_on_hand_qty, :prn_invitation_if_has_debt
  validates_presence_of :ayear_id, :faculty_id, :actual_sess, :train_level_id, :edu_form_id, :smstr_qty, :demoiselle_on_hand_qty, :prn_invitation_if_has_debt
  validates_uniqueness_of :actual_sess, :cmp_id

  default_scope order: 'cmp.cmp_id DESC'

  def to_s
    "#{sys_name}"
  end
end

