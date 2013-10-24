module AdminsHelper
def full_title_admin(page_title)
    base_title = "Admin gikTuts"
    if page_title.blank?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
end
