class RoomPer < ActiveRecord::Base
  set_primary_key :room_pers_id

  # Relationships
  

  # Constraints
  validates_numericality_of :room_id, :dept_pers_id
  validates_presence_of :room_id, :dept_pers_id
end

