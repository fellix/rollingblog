require 'spec_helper'

describe "posts/show.html.haml" do
  before do
    @post = Factory.build(:welcome)
  end
  it "should render the post at the screen" do
    assign :post, @post
    
    #assert_select('h2', @post.title)
    #assert_select("div#post_content", @post.body)
  end
end
