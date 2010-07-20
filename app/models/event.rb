require 'mongo_mapper'

class Event
	include MongoMapper::Document
	
	key :user_id, Integer
	key :title, String
	key :url, String
	key :description, String
	key :starts_at, Time
	key :ends_at, Time
	key :address, String
	key :lat, Float
	key :long, Float
	key :tags, Array
	
	ensure_index :user_id
	ensure_index [[:lat,1], [:long,1], [:starts_at,1], [:tags,1]]
	
	validates_presence_of :title
	validates_presence_of :starts_at
	
end