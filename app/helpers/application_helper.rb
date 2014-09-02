module ApplicationHelper
	def full_title(page_title)
		base_title = "GearUp"
		home_title = "Welcome to GearUp"
		if page_title.empty?
			home_title
		else
			"#{base_title} | #{page_title}"
		end
	end
end
