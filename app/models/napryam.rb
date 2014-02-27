class Napryam < ActiveRecord::Base
  set_table_name  :napryam
  set_primary_key :no_primary_key

  # Relationships
  

  # Constraints
  validates_numericality_of :npid
  validates_presence_of :npid
end

