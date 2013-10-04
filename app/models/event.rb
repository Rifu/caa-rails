class Event < ActiveRecord::Base
	has_attached_file :event_image, :styles => { :display => "400x210>" }
end
