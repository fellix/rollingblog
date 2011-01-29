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
  
  def self.list
    self.order(:desc => "created_at").limit(10)
  end
  
  def month_year
    "#{MONTHS[self.created_at.month]} de #{self.created_at.year}"
  end
  
end
