module ApplicationHelper

	def logo
	 image_tag("/images/dtslogo.jpg", :alt => "Sample APP", :class => "round") 
	end

	# define Global / Unique Title Header
	def title
		base_title = "Rubby on the rails Tutorial Sample App"
		if @title.nil?
			base_title
		else
			"#{base_title} |#{@title}"
		end
	end

end
