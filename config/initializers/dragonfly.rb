require 'dragonfly'

# Configure
Dragonfly.app.configure do
  plugin :imagemagick

  secret "b640b2f33d4415c14ebc233811ae05a74e113f8da4cd9284f0f77f6a6ba494cc"

  url_format "/media/:job/:name"

  datastore :file,
    root_path: Rails.root.join('public/system/dragonfly', Rails.env),
    server_root: Rails.root.join('public')
end

# Logger
Dragonfly.logger = Rails.logger

# Mount as middleware
Rails.application.middleware.use Dragonfly::Middleware

# Add model functionality
ActiveSupport.on_load(:active_record) do
  extend Dragonfly::Model
  extend Dragonfly::Model::Validations
end
