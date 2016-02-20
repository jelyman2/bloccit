module UsersHelper
  def user_created_posts?
    true unless user.posts.count.nil?
  end

  def user_created_comments?
    true unless user.comments.count.nil?
  end
end
