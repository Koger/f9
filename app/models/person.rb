class Person < ActiveRecord::Base
  set_table_name  :person
  set_primary_key :no_primary_key

  # Relationships
  

  # Constraints
  validates_numericality_of :ptype, {:allow_nil=>true}
  validates_numericality_of :persid
  validates_presence_of :persid
end

