class VSemestr < ActiveRecord::Base
  set_table_name  :v_semestr
  set_primary_key :no_primary_key

  # Relationships
  

  # Constraints
  validates_numericality_of :semestr_id, :cmp_id
  validates_presence_of :semestr_id, :cmp_id
end

