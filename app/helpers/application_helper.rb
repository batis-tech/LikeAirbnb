module ApplicationHelper

  def profile_picture account
    thumb = account.image.present? ? account.image.url : "placeholder.jpeg"
    image_tag thumb, class: "profile-pic img-circle "
  end

end
