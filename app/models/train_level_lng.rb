class TrainLevelLng < ActiveRecord::Base
  set_table_name  :train_level_lng
  set_primary_key :train_level_id

  # Relationships
  

  # Constraints
  validates_numericality_of :lng_id
  validates_presence_of :lng_id
end

