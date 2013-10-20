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

  def sign_in(gik_user)
    self.current_user = gik_user
  end

  def current_user
    session[:gik_user]
  end

  def create_session(gik_user)
    session[:gik_user] = gik_user
  end

  def destroy_session
    session.delete(:gik_user)
  end
end
