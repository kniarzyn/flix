module UsersHelper
  def member_since(user)
    user.created_at.strftime('%B %Y')
  end

  def profile_image(user)
    url = "https://secure.gravatar.com/avatar/#{user.gravatar_id}"
    image_tag(url, alt: user.name)
  end
end
