class Fib$fieldsInfo < ActiveRecord::Base
  set_table_name  :"fib$fields_info"
  set_primary_key :table_name

  # Relationships
  

  # Constraints
    def self.possible_values_for_visible
    "true, false"
  end
  validates_inclusion_of :visible,
                         :in      => possible_values_for_visible, 
                         :message => "is not one of (#{possible_values_for_visible.join(', ')})"

    def self.possible_values_for_triggered
    "true, false"
  end
  validates_inclusion_of :triggered,
                         :in      => possible_values_for_triggered, 
                         :message => "is not one of (#{possible_values_for_triggered.join(', ')})"

  validates_numericality_of :display_width, :"fib$version", {:allow_nil=>true}
  validates_presence_of :field_name
end

