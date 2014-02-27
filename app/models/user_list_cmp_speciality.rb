class UserListCmpSpeciality < ActiveRecord::Base
  set_table_name  :user_list_cmp_speciality
  set_primary_key :user_list_cmp_speciality_id

  # Relationships
  

  # Constraints
    def self.possible_values_for_cmp_speciality_sel
    "true, false"
  end
  validates_inclusion_of :cmp_speciality_sel,
                         :in      => possible_values_for_cmp_speciality_sel, 
                         :message => "is not one of (#{possible_values_for_cmp_speciality_sel.join(', ')})"

    def self.possible_values_for_cmp_speciality_ins
    "true, false"
  end
  validates_inclusion_of :cmp_speciality_ins,
                         :in      => possible_values_for_cmp_speciality_ins, 
                         :message => "is not one of (#{possible_values_for_cmp_speciality_ins.join(', ')})"

    def self.possible_values_for_cmp_speciality_upd
    "true, false"
  end
  validates_inclusion_of :cmp_speciality_upd,
                         :in      => possible_values_for_cmp_speciality_upd, 
                         :message => "is not one of (#{possible_values_for_cmp_speciality_upd.join(', ')})"

    def self.possible_values_for_cmp_speciality_del
    "true, false"
  end
  validates_inclusion_of :cmp_speciality_del,
                         :in      => possible_values_for_cmp_speciality_del, 
                         :message => "is not one of (#{possible_values_for_cmp_speciality_del.join(', ')})"

  validates_numericality_of :user_list_id, :cmp_speciality_id
  validates_presence_of :user_list_id, :cmp_speciality_id
  validates_uniqueness_of :user_list_id, :cmp_speciality_id
end

