class Privcard < ActiveRecord::Base
  set_table_name  :privcard
  set_primary_key :card_id

  # Relationships
  

  # Constraints
    def self.possible_values_for_sex
    "true, false"
  end
  validates_inclusion_of :sex,
                         :in      => possible_values_for_sex, 
                         :message => "is not one of (#{possible_values_for_sex.join(', ')})"

  validates_numericality_of :last_contract, :last_agroup_id, :region_id, :district_id, :village_id, :zodiac_id, :country_id, {:allow_nil=>true}
  validates_numericality_of :privcard_ins_user_id
  validates_presence_of :surname, :name, :ins_date, :edt_date, :ins_time, :privcard_ins_user_id, :privcard_edt_time
  validates_uniqueness_of :last_contract, :card_id
end

