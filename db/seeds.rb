require 'faker'

100.times do
  Comment.create body: Faker::Lorem.paragraph
end

comment_ids = Comment.pluck(:id)

100.times do
  post = Post.create title: Faker::Name.name
  post.comments << Comment.find(comment_ids.shuffle.first)
end

