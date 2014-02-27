class CntrlType < ActiveRecord::Base
  set_table_name  :cntrl_type
  set_primary_key :cntrl_type_id

  # Relationships
  

  # Constraints
    def self.possible_values_for_rec_book_side
    "true, false"
  end
  validates_inclusion_of :rec_book_side,
                         :in      => possible_values_for_rec_book_side, 
                         :message => "is not one of (#{possible_values_for_rec_book_side.join(', ')})"

  validates_presence_of :cntrl_type_name
end

