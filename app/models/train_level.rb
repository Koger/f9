class TrainLevel < ActiveRecord::Base
  set_table_name  :train_level
  set_primary_key :train_level_id

  # Relationships
  

  # Constraints
  validates_presence_of :train_level_name, :train_level_short_name
  validates_uniqueness_of :train_level_name, :train_level_short_name
end

