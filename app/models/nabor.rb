class Nabor < ActiveRecord::Base
  set_table_name  :nabor
  set_primary_key :no_primary_key

  # Relationships
  

  # Constraints
  validates_numericality_of :nabortype, {:allow_nil=>true}
  validates_numericality_of :naborid, :naboryear
  validates_presence_of :naborid, :naboryear
end

