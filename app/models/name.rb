class Name < ActiveRecord::Base
  set_table_name  :name
  set_primary_key :name_id

  # Relationships
  

  # Constraints
    def self.possible_values_for_name_sex
    "true, false"
  end
  validates_inclusion_of :name_sex,
                         :in      => possible_values_for_name_sex, 
                         :message => "is not one of (#{possible_values_for_name_sex.join(', ')})"

  validates_numericality_of :name_qty, {:allow_nil=>true}
end

