require 'spec_helper'

describe User do
  before do
    @user = Factory.build(:user)
  end
  
  it "should get the user's name when call to_s" do
    @user.to_s.should be_eql @user.name
  end
  
end