require 'spec_helper'

describe "view a single post", :type => :acceptance do
  before do
    @post = Factory.create(:welcome)
    Post.stub(:list){[@post]}
  end
  it "visit a post" do
    visit('/')
    click_link(@post.title)
    current_path.should == "/posts/#{@post.friendly_id}"
  end
end