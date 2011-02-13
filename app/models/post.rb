class Post < ActiveRecord::Base
  MONTHS = {
    1 => "Janeiro", 
    2 => "Fevereiro", 
    3 => "Marco", 
    4 => "Abril", 
    5 => "Maio", 
    6 => "Junho", 
    7 => "Julho", 
    8 => "Agosto",
    9 => "Setembro", 
    10 => "Outubro", 
    11 => "Novembro", 
    12 => "Dezembro"
  }
  belongs_to :user
  validates :title, :body, :user, :presence => true
  validates :title, :length => { :maximum => 200 }
  has_friendly_id :title, :use_slug => true
  scope :list, order("created_at").limit(10)  
  
  def month_year
    "#{MONTHS[self.created_at.month]} de #{self.created_at.year}"
  end
  
  def self.find_by_url(friendly_id)
    result = self.joins("JOIN slugs ON slugs.sluggable_id = posts.id and slugs.sluggable_type = 'Post'").where("slugs.name = ?", friendly_id).first
    raise ActiveRecord::RecordNotFound unless result
    result
  end
  
end
