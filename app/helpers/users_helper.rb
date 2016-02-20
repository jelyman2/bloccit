module UsersHelper
  def user_created_posts?(user)
    user.posts.count.nil?
  end

  def user_created_comments?(user)
    user.comments.count.nil?
  end

  def user_favorited_posts?(user)
    user.favorites.count.nil?
  end
end
