module SSLBackport
  class Railtie < Rails::Railtie 
    initializer "set_configs" do |app|
      if app.config.force_ssl
        require 'ssl_backport/middleware'
        app.config.middleware.swap ActionDispatch::SSL, SSLBackport::Middleware, app.config.ssl_options
      end
    end
  end
end