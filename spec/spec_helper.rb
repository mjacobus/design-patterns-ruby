$LOAD_PATH << File.realpath('./examples')
require 'simplecov'
SimpleCov.start

if ENV['TRAVIS']
  require 'coveralls'
end

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
end
