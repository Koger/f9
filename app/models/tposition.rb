class Tposition < ActiveRecord::Base
  set_table_name  :tposition
  set_primary_key :no_primary_key

  # Relationships
  

  # Constraints
  validates_numericality_of :tposid
  validates_presence_of :tposid
end

