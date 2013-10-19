module ApplicationHelper
	def error(model, field_names)
		@error_message = model.errors.messages
    field_names.each do |field_name|

    end
	end

  def full_title(page_title)
    base_title = "GikTuts"
    if page_title.blank?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
end
