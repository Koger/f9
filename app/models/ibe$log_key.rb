class Ibe$logKey < ActiveRecord::Base
  set_primary_key :no_primary_key

  # Relationships
  

  # Constraints
  validates_numericality_of :log_tables_id
  validates_presence_of :log_tables_id, :key_field
end

