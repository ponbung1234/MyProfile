ActiveAdmin.register Post do
permit_params :title, :body, :image, :url, :imageurl

		show do |t|
			attributes_table do
				row :title
				row :body
				row :url
				row :imageurl
				row :image do
					post.image? ? image_tag(post.image.url, height: '100') : content_tag(:span, "No photo yet")
				end
			end
		end

		form :html => { :enctype => "multipart/form-data" } do |f|
			f.inputs do
				f.input :title
				f.input :body
				f.input :url
				f.input :imageurl
				f.input :image, hint: f.post.image? ? image_tag(post.image.url, height: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")
			end
			f.actions
		end
end
