class PagesController < ApplicationController
  def index
    @posts = Post.list
    @right_group = []
    @left_group = []
    @posts.each_with_index do |post, count|
      @left_group << post if count < 5
      @right_group << post if count >= 5
    end
  end
  
  def about
    @abouts = About.all    
    flash[:alert] = t('about.nothing') if @abouts.empty?
  end
end
