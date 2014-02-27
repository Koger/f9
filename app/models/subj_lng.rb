class SubjLng < ActiveRecord::Base
  set_table_name  :subj_lng
  set_primary_key :subj_id

  # Relationships
  

  # Constraints
  validates_numericality_of :lng_id
  validates_presence_of :lng_id
  validates_uniqueness_of :lng_id, :subj_name
end

