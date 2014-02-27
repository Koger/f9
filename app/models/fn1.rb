class Fn1 < ActiveRecord::Base
  set_table_name  :fn1
  set_primary_key :no_primary_key

  # Relationships
  

  # Constraints
    def self.possible_values_for_tag
    "true, false"
  end
  validates_inclusion_of :tag,
                         :in      => possible_values_for_tag, 
                         :message => "is not one of (#{possible_values_for_tag.join(', ')})"

  validates_numericality_of :countsex, {:allow_nil=>true}
end

