Factory.define :about_felix, :class => About do |about|
  about.user Factory.build(:user)
  about.body "ads"*200
end