class Article < ActiveRecord::Base
	default_scope { order(created_at: :desc) }
	validates :title, presence: true,
	                  length: { minimum: 5 }
	                  
	include Bootsy::Container
end
