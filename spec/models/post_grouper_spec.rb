require 'spec_helper'

describe PostGrouper do
  it "should be equal when the month is equal" do
    one = PostGrouper.new :month => "Janeiro de 2011"
    two = PostGrouper.new :month => "Janeiro de 2011"
    one.should be_== two
  end
  
  it "should not be equal when the month isn't equal" do
    one = PostGrouper.new :month => "Janeiro de 2011"
    two = PostGrouper.new :month => "Fevereiro de 2011"
    one.should_not be_== two
  end
  
  it "should group the posts by the month" do
    Post.stub!(:list).and_return([Factory.build(:welcome), Factory.build(:welcome1), Factory.build(:welcome2)])
    groups = PostGrouper.all
    groups.first.size.should be_eql 2
    groups.first.first.posts.size.should be_eql 2
  end
  
  it "should group in the right group and in the left group" do
    Post.stub!(:list).and_return([Factory.build(:welcome), Factory.build(:welcome1), Factory.build(:welcome2), 
      Factory.build(:welcome1), Factory.build(:welcome2), Factory.build(:welcome1), Factory.build(:welcome2)])
    groups = PostGrouper.all    
    groups.first.size.should be_eql 2
    groups.first.first.posts.size.should be_eql 2
  end
end