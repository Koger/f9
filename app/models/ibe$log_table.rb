class Ibe$logTable < ActiveRecord::Base

  # Relationships
  

  # Constraints
  validates_presence_of :table_name, :operation, :date_time, :user_name
end

