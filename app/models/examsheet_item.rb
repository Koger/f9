class ExamsheetItem < ActiveRecord::Base
  set_table_name  :examsheet_item
  set_primary_key :examsheet_item_id

  # Relationships
  

  # Constraints
    def self.possible_values_for_accepted
    "true, false"
  end
  validates_inclusion_of :accepted,
                         :in      => possible_values_for_accepted, 
                         :message => "is not one of (#{possible_values_for_accepted.join(', ')})"

  validates_numericality_of :examsheet_item_no, {:allow_nil=>true}
  validates_numericality_of :examsheet_id, :contract_id
  validates_presence_of :examsheet_id, :contract_id, :examsheet_item_ins_date, :examsheet_item_ins_time
  validates_uniqueness_of :examsheet_id, :contract_id
end

