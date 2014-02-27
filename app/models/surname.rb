class Surname < ActiveRecord::Base
  set_table_name  :surname
  set_primary_key :surname_id

  # Relationships
  

  # Constraints
    def self.possible_values_for_surname_sex
    "true, false"
  end
  validates_inclusion_of :surname_sex,
                         :in      => possible_values_for_surname_sex, 
                         :message => "is not one of (#{possible_values_for_surname_sex.join(', ')})"

  validates_numericality_of :surname_qty, {:allow_nil=>true}
end

