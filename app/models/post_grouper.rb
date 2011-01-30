class PostGrouper
  attr_accessor :month, :posts
  
  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end  
  
  def self.all
    map = {}    
    Post.list.each do |post|
      grouper = map[post.month_year]
      grouper ||= PostGrouper.new(:month => post.month_year, :posts => [])      
      grouper.posts << post
      map.merge!(post.month_year => grouper)
    end
    right_group = []
    left_group = []
    count = 0
    map.each do |entry|
      #TODO tem que dividir os posts quando passar de 5 na terminada pagina
      if count <= 5
        right_group << entry[1]        
      else
        left_group << entry[1]
      end
      count+=entry[1].posts.size
    end
    [right_group, left_group]
  end
  
  def ==(other)
    self.month == other.month
  end
  
  def to_s
    self.month
  end
end