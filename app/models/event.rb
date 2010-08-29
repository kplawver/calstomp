require 'mongo_mapper'

class Event
	include MongoMapper::Document
	
	key :user_id, Integer
	key :dtstart, Time
	key :dtend, Time
	key :summary, String
	key :url, String
	key :description, String
	key :location, String
	key :lat, Float
	key :long, Float
	key :tags, Array
	
	ensure_index :user_id
	ensure_index :starts_at
	ensure_index [[:lat,1], [:long,1], [:starts_at,1], [:tags,1]]
	
	validates_presence_of :summary
	validates_presence_of :dtstart
	
	def self.today(page=1)
		Event.paginate(:page => page, :dtstart => {"$gte" => Time.now, "$lte" => Time.now.midnight.advance(:hours => 24)})
	end
	
	def self.tomorrow(page=1)
		Event.paginate(:page => page, :dtstart => {"$gte" => Time.now.midnight.advance(:hours => 24), "$lte" => Time.now.midnight.advance(:hours => 48)})
	end
	
	def self.week(page=1)
		Event.paginate(:page => page, :dtstart => {"$gte" => Time.now, "$lte" => Time.now.midnight.advance(:days => 7)})
	end
	
	def geo
		"#{self.lat},#{self.long}"
	end
	
	
	
	
end