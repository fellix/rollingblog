require 'spec_helper'

describe PagesController do  
  describe "GET 'index'" do
    it "should be successful" do
      stub_post_list
      get 'index'
      response.should be_success
      assigns[:left_group].should eq(@posts)
      assigns[:right_group].should eq([])
    end
    
    it "should be have right and left groups when the posts size is greather than 5" do
      stub_post_list [Factory.build(:welcome), Factory.build(:welcome1), Factory.build(:welcome2), Factory.build(:welcome1), 
        Factory.build(:welcome2), Factory.build(:welcome1), Factory.build(:welcome2)]
      get 'index'
      response.should be_success
      assigns[:left_group].should eq(@posts[0..4])
      assigns[:right_group].should eq(@posts[5..10])
    end
  end
  
  private
  def stub_post_list(factories=[Factory.build(:welcome), Factory.build(:welcome1), Factory.build(:welcome2)])
    @posts = factories
    Post.stub!(:list){@posts}
  end
end
