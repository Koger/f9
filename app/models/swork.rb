class Swork < ActiveRecord::Base
  set_table_name  :swork
  set_primary_key :no_primary_key

  # Relationships
  

  # Constraints
    def self.possible_values_for_isexelent
    "true, false"
  end
  validates_inclusion_of :isexelent,
                         :in      => possible_values_for_isexelent, 
                         :message => "is not one of (#{possible_values_for_isexelent.join(', ')})"

  validates_numericality_of :wtypeid, :gekid, :rukid, :revid, :protocol_no, :hundred_score, {:allow_nil=>true}
  validates_numericality_of :workid, :studid, :mark
  validates_presence_of :workid, :studid, :mark
end

