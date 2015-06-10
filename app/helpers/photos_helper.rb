module PhotosHelper
	def special_thing(parent)
		case parent
		when Idea
			idea_photos_path(parent)
		when Item
			item_photos_path(parent)
		end
	end

	def back_button(parent)
		case parent
		when Idea
			idea_path(parent)
		when Item
			item_path(parent)
		end
	end
end
