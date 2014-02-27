class Gek < ActiveRecord::Base
  set_table_name  :gek
  set_primary_key :no_primary_key

  # Relationships
  

  # Constraints
  validates_numericality_of :persid, :eduqualid, :secretaryid, {:allow_nil=>true}
  validates_numericality_of :gekid, :naborid, :specid
  validates_presence_of :gekid, :naborid, :specid
end

