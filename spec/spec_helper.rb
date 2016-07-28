require 'active_record'

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'napa'

require 'acts_as_fu'

RSpec.configure do |config|
  config.include ActsAsFu
end
