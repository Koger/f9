class TutorFull < ActiveRecord::Base
  set_table_name  :tutor_full
  set_primary_key :no_primary_key

  # Relationships
  

  # Constraints
  validates_numericality_of :persid, :cafnum, :cafid, :tposid
  validates_presence_of :persid, :cafnum, :cafid, :tposid
end

