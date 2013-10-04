ActiveAdmin.register Site do
	form do |f|
		f.inputs "Details" do
			f.input :name
			f.input :banner, :as => :file, :hint => f.template.image_tag(f.object.banner.url)
		end
		f.actions
	end

	controller do
		def permitted_params
			params.permit site: [:name, :banner]
		end
	end
end
