class PagesController < ApplicationController  
  def index
    @page_description = "10 ultimos posts. Last ten posts"
    @page_keywords = "Rollingwithcode, Software, Desenvolvimento, Java, Ruby, Ruby on Rails"
    @posts = Post.list
    @right_group = []
    @left_group = []
    @posts.each_with_index do |post, count|
      @left_group << post if count < 5
      @right_group << post if count >= 5
    end
  end
  
  def about
    @page_title = "Sobre"
    @page_description = "Sobre o autor do blog"
    @page_keywords = "Rollingwithcode, Rafael Felix, Rafael, Felix"
    @abouts = About.all    
    flash[:alert] = t('about.nothing') if @abouts.empty?
  end
end
