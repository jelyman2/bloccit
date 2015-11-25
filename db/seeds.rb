include RandomData

# Create Posts
50.times do
  Post.create!(
    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph
  )
end
posts = Post.all

# Create Comments
100.times do
  Comment.create!(
    post:  posts.sample,
    body: RandomData.random_paragraph
  )
end

# Create Unique Post
unique_title = "This is a unique post title that was created by seeds.rb"
unique_body = "This is some body text. It was created using seeds.rb. This is a
unique blob of text that none of the other posts will contain."

unless Post.exists?(title: unique_title)
  Post.create!(
    title: unique_title,
    body: unique_body
  )
end

# Create Uniqe Comment
unique_body = "This is a unique comment"

unless Comment.exists?(body: unique_body)
  Comment.create!(
    post: posts.sample,
    body: unique_body
  )
end

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
