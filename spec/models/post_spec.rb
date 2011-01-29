require 'spec_helper'

describe Post do  
  it { should belong_to(:user) }
  it { should validate_presence_of(:title)}
  it { should validate_presence_of(:body) }
  it { should validate_presence_of(:user) }
  it { should ensure_length_of(:title).is_at_most(200) }
  it "should show a valid month/year in long way" do
    @post = Factory.build(:welcome)
    @post.month_year.should be_eql "Janeiro de 2011"
  end
end
