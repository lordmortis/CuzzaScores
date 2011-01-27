module ApplicationHelper
	def tag_list(object)
		value = ""
		for tag in object.tags
			value += link_to(tag.name, tag)
			value += ", "
		end
		if value != ""
			value = value[0..-3]
		end
		
		value
	end
	
	def page_list(object)
		value = ""
		for page in object.pages
			value += link_to(page.name, page)
			value += ", "
		end
		if value != ""
			value = value[0..-3]
		end
		
		value
	end
	

	def contentlink(content)
		link_to(:action => "content", :controller => "content_viewer", :id => content.id)
	end
end
