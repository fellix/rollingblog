Factory.define :welcome, :class => Post do |post|
  post.user Factory.build(:user)
  post.title "Bem Vindo ao RollingBlog"
  post.body "asdas"*200
  post.created_at Time.new(2011, 1, 28)
end