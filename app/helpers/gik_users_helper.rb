module GikUsersHelper
  def gravatar_for(gik_user)
    gravatar_id = Digest::MD5::hexdigest(gik_user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: gik_user.name, class: "gravatar")
  end

  def current_user
    session[:gik_user]
  end

  def create_session(gik_user)
    session[:gik_user] = gik_user
  end

  def session_destroy
    session.delete(:gik_user)
  end
end
