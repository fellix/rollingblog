Factory.define :welcome, :class => Post do |post|
  post.id 1
  post.user Factory.build(:user)
  post.title "Bem Vindo ao RollingBlog"
  post.body "asdas"*200
  post.created_at Time.new(2011, 1, 28)
end

Factory.define :welcome1, :class => Post do |post|
  post.id 2
  post.user Factory.build(:user)
  post.title "Bem Vindo ao RollingBlog"
  post.body "asdas"*200
  post.created_at Time.new(2011, 1, 28)
end

Factory.define :welcome2, :class => Post do |post|
  post.id 3
  post.user Factory.build(:user)
  post.title "Bem Vindo ao RollingBlog"
  post.body "asdas"*200
  post.created_at Time.new(2011, 2, 28)
end