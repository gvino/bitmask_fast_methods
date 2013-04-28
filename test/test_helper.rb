require "rubygems"
require 'bundler/setup'

require 'test/unit'
require 'shoulda'

require 'active_record'
require 'bitmask_attributes'

# Load support files
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }
require 'bitmask_fast_methods'

# Load fixtures from the engine
if ActiveSupport::TestCase.method_defined?(:fixture_path=)
  ActiveSupport::TestCase.fixture_path = File.expand_path("../fixtures", __FILE__)
end
