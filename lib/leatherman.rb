require "leatherman/version"
require "active_support/core_ext"

# require all extensions
Dir.glob( File.join(File.dirname(__FILE__), "extensions", "**", "*.rb") ).each do |file|
  require file
end
