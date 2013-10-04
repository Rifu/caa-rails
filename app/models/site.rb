class Site < ActiveRecord::Base
	has_attached_file :banner, :styles => { :display => "1170x439>" }
end
