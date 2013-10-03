ActiveAdmin.register Event do
	form do |f|
		f.inputs "Details" do
			f.input :title
			f.input :event_type, :as => :select, :collection => ["Showing", "Manga Social", "Game Night"]
			f.input :event_date
			f.input :start_time
			f.input :end_time
			f.input :location
			f.input :event_image, :as => :file, :hint => f.template.image_tag(f.object.event_image.url)
		end
		f.actions
	end

	controller do
    	def permitted_params
      		params.permit event: [:title, :start_time, :end_time, :event_type, :event_date,
      							:location, :event_image]
    	end
  	end
end
