class TrainingCycle < ActiveRecord::Base
  set_table_name  :training_cycle
  set_primary_key :training_cycle_id

  # Relationships
  

  # Constraints
  validates_numericality_of :owner, {:allow_nil=>true}
  validates_presence_of :training_cycle_name
  validates_uniqueness_of :training_cycle_name
end

