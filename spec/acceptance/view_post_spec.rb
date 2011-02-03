require 'spec_helper'

describe "view a single post", :type => :acceptance do
  before do
    @post = Factory.build(:welcome)
    Post.stub(:list){[@post]}
  end
  it "visit a post" do
    visit('/')
    click_link(@post.title)
    puts current_path
    current_path.should == "/posts/#{@post.id}"
  end
end