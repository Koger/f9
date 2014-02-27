class Gekmember < ActiveRecord::Base
  set_table_name  :gekmember
  set_primary_key :no_primary_key

  # Relationships
  

  # Constraints
  validates_numericality_of :memno, {:allow_nil=>true}
  validates_numericality_of :gmid, :persid, :gekid
  validates_presence_of :gmid, :persid, :gekid
end

