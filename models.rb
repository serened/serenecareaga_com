DataMapper.setup(:default, 'sqlite:///path/to/shizz.db')
class Task
  include DataMapper::Resource

  property :id,            		Serial
  property :complete,        	Boolean
  property :description,    	Text
  property :created_at,        	DateTime
  property :updated_at,        	DateTime

end
DataMapper.auto_upgrade!
