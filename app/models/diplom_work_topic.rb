class DiplomWorkTopic < ActiveRecord::Base
  set_table_name  :diplom_work_topic
  set_primary_key :diplom_work_topic_id

  # Relationships
  

  # Constraints
  validates_numericality_of :diplom_id, :pers_id, :diplom_topic_id, {:allow_nil=>true}
end

