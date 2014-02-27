class CmpTrainLevel < ActiveRecord::Base
  set_table_name  :cmp_train_level
  set_primary_key :cmp_train_level_id

  # Relationships
  

  # Constraints
  validates_numericality_of :cmp_id, :train_level_id
  validates_presence_of :cmp_id, :train_level_id, :ctl_start_date, :ctl_finish_date, :cmp_start_date, :cmp_finish_date
  validates_uniqueness_of :cmp_id, :train_level_id
end

