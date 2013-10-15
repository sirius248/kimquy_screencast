module ApplicationHelper
	def error(model, field_name)
		@error_message = model.errors.messages
	end
end
