class PostsController < ApplicationController
  def show
    @post = Post.find_by_url params[:id]
    @page_title = "#{@post.title}"
    @page_description = "#{@post.body}"
    @page_keywords = @post.keywords
  end
end
