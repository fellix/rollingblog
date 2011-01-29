class PagesController < ApplicationController
  def index
    @posts = Post.list
  end
end
