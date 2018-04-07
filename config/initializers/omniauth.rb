OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '957202529062-dg8ule6n12aj0j8j44rs25pcmof1hghg.apps.googleusercontent.com', 'mBTKVbHnhJKWohZUoJROIHvG', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end
