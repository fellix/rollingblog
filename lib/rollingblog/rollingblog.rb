module RollingBlog
  mattr_accessor :disqus_url
  @@disqus_url = 'http://rollingwithcode.heroku.com'
  mattr_accessor :disqus_id
  @@disqus_id = 'rollingwithcodeh'
  mattr_accessor :analytics_id
  @@analytics_id = ''
  
  def self.config
    yield self
  end
end