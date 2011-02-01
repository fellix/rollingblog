require 'spec_helper'

describe PostsController do
  before do
    @post = Factory.build(:welcome)
  end
  describe "GET 'show'" do
    it "should be successful" do
      Post.stub(:find).with(1).and_return(@post)
      get 'show', :id => 1
      response.should be_success
      assigns[:post].should eq(@post)
    end
    it "should render 404 when the post isn't found" do
      get 'show', :id => 123
      response.should_not be_success
      response.status.should be_eql(404)
    end
  end

end
