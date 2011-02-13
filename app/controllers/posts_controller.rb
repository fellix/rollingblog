class PostsController < ApplicationController
  def show
    @post = Post.find_by_url params[:id]
    @page_title = "#{@post.title}"
    @page_description = "#{@post.body}"
    #TODO: include tags to keywords    
  end
end
