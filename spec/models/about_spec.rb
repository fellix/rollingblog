require 'spec_helper'

describe About do
  it { should belong_to(:user) }
  it { should validate_presence_of(:body) }
  it { should validate_presence_of(:user) }
end
