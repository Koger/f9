class Zodiac < ActiveRecord::Base
  set_table_name  :zodiac
  set_primary_key :zodiac_id

  # Relationships
  

  # Constraints
  validates_presence_of :start_date, :finish_date
end

