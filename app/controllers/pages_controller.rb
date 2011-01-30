class PagesController < ApplicationController
  def index
    @groupers = PostGrouper.all
  end
end
