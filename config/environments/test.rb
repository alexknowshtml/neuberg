# Settings specified here will take precedence over those in config/environment.rb

# The test environment is used exclusively to run your application's
# test suite.  You never need to work with it otherwise.  Remember that
# your test database is "scratch space" for the test suite and is wiped
# and recreated between test runs.  Don't rely on the data there!
config.cache_classes = true

# Log error messages when you accidentally call methods on nil.
config.whiny_nils = true

# Show full error reports and disable caching
config.action_controller.consider_all_requests_local = true
config.action_controller.perform_caching             = false
config.action_view.cache_template_loading            = true

# Disable request forgery protection in test environment
config.action_controller.allow_forgery_protection    = false

# Tell Action Mailer not to deliver emails to the real world.
# The :test delivery method accumulates sent emails in the
# ActionMailer::Base.deliveries array.
config.action_mailer.delivery_method = :test

# Use SQL instead of Active Record's schema dumper when creating the test database.
# This is necessary if your schema can't be completely dumped by the schema dumper,
# like if you have constraints or database-specific column types
# config.active_record.schema_format = :sql
config.gem 'mocha', :version => '>=0.9.5'
config.gem 'rspec', :lib => false, :version => '>= 1.2.9'
config.gem 'rspec-rails', :lib => 'spec/rails', :version => '>= 1.2.9'
config.gem 'term-ansicolor', :lib => false, :version => '>=1.0.4'
config.gem 'treetop', :lib => false
config.gem 'diff-lcs', :lib => false
config.gem 'nokogiri', :lib => false
config.gem 'builder', :lib => false
config.gem 'cucumber', :version => '>= 0.5.1'
config.gem 'webrat', :version => '>= 0.6.0'
config.gem 'remarkable_rails', :lib => false, :version => '>= 3.1.11'
config.gem 'bmabey-email_spec', :lib => 'email_spec', :source => 'http://gems.github.com', :version => '>= 0.3.4'
config.gem 'random_data', :version => '>=1.5.0'
config.gem 'faker', :version => '>=0.3.1'
config.gem 'machinist', :lib => 'machinist', :source => 'http://gemcutter.org', :version => '>=1.0.5'
config.gem 'unboxed-be_valid_asset', :lib => 'be_valid_asset', :source => 'http://gems.github.com', :version => '>= 1.1.0'
config.gem "contextually", :version => ">= 0.1"
config.gem 'factory_girl', :version => '>= 1.2.3'

# copied from cucumber.rb - The new cucumber (0.5.1) requires you to run under the 
# cucumber environment, but our CI server RunCodeRun.com always runs in the test environment

# ----------- Start Copy from Cucumber 0.5.1 generated cucumber.rb ------------

config.gem 'cucumber-rails',   :lib => false, :version => '>=0.2.1' unless File.directory?(File.join(Rails.root, 'vendor/plugins/cucumber-rails'))
config.gem 'database_cleaner', :lib => false, :version => '>=0.2.3' unless File.directory?(File.join(Rails.root, 'vendor/plugins/database_cleaner'))
config.gem 'capybara',         :lib => false, :version => '>=0.2.0' unless File.directory?(File.join(Rails.root, 'vendor/plugins/capybara'))
config.gem 'rspec',            :lib => false, :version => '>=1.2.9' unless File.directory?(File.join(Rails.root, 'vendor/plugins/rspec'))
config.gem 'rspec-rails',      :lib => false, :version => '>=1.2.9' unless File.directory?(File.join(Rails.root, 'vendor/plugins/rspec-rails'))

# -------------End Copy from Cucumber 0.5.1 generated cucumber.rb --------------
