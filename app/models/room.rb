class Room < ActiveRecord::Base
  set_table_name  :room
  set_primary_key :room_id

  # Relationships
  

  # Constraints
  validates_numericality_of :dept_id, :building_id
  validates_presence_of :dept_id, :building_id
end

