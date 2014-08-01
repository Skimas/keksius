class Article < ActiveRecord::Base
	default_scope { order(created_at: :desc) }
	include Bootsy::Container
end
