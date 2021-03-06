class Aircraft < ActiveRecord::Base
  attr_accessible :code, :destination_id, :source_id, :latitude, :longitude
  
  belongs_to :destination, class_name: "Airport", foreign_key: "destination_id"
  belongs_to :source, class_name: "Airport", foreign_key: "source_id"
  
  validates_presence_of :code, :destination, :source

end