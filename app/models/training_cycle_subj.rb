class TrainingCycleSubj < ActiveRecord::Base
  set_table_name  :training_cycle_subj
  set_primary_key :training_cycle_subj

  # Relationships
  

  # Constraints
  validates_numericality_of :subj_id, :training_cycle_id
  validates_presence_of :subj_id, :training_cycle_id
  validates_uniqueness_of :subj_id, :training_cycle_id
end

