class Okr < ActiveRecord::Base
  set_table_name  :okr
  set_primary_key :okr_id

  # Relationships
  

  # Constraints
    def self.possible_values_for_okr_deans_office_visible
    "true, false"
  end
  validates_inclusion_of :okr_deans_office_visible,
                         :in      => possible_values_for_okr_deans_office_visible, 
                         :message => "is not one of (#{possible_values_for_okr_deans_office_visible.join(', ')})"

  validates_uniqueness_of :okr_name, :short_name
end

