class DiplomTopic < ActiveRecord::Base
  set_table_name  :diplom_topic
  set_primary_key :diplom_topic_id

  # Relationships
  

  # Constraints
  validates_numericality_of :diplom_topic_num, {:allow_nil=>true}
end

