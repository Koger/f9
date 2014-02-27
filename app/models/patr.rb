class Patr < ActiveRecord::Base
  set_table_name  :patr
  set_primary_key :patr_id

  # Relationships
  

  # Constraints
    def self.possible_values_for_patr_sex
    "true, false"
  end
  validates_inclusion_of :patr_sex,
                         :in      => possible_values_for_patr_sex, 
                         :message => "is not one of (#{possible_values_for_patr_sex.join(', ')})"

  validates_numericality_of :patr_qty, {:allow_nil=>true}
end

