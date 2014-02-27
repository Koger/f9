class Subj < ActiveRecord::Base
  set_table_name  :subj
  set_primary_key :subj_id

  # Relationships
  

  # Constraints
  validates_presence_of :subj_name, :ins_date, :ins_time
  validates_uniqueness_of :subj_name, :subj_id
end

