module ApplicationHelper
	def error(model, field_names)
		@error_message = model.errors.messages
    field_names.each do |field_name|

    end
	end
end
