module UsersHelper
  def member_since(user)
    user.created_at.strftime('%B %Y')
  end
end
