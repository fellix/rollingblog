RailsAdmin.config do |config|
  config.model Post do
    edit do
      field :user_id
      field :title
      field :body do
        ckeditor true
      end
    end
  end
  config.model About do
    edit do
      field :user_id
      field :body do
        ckeditor true
      end
    end
  end
end