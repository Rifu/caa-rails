ActiveAdmin.register Post do
	form do |f|
		f.inputs "Details" do
			f.input :title
			f.input :content, as: :html_editor
		end
		f.actions
	end

	controller do
		def permitted_params
			params.permit post: [:title, :content]
		end
	end
end
