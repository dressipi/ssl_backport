require "ssl_backport/version"

module SSLBackport

end

if defined?(Rails)
  require 'ssl_backport/railtie'
end