source 'http://rubygems.org'

gem 'rails', '3.1.3'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'


group :production do
  gem 'pg'
end
group :development do
  gem 'sqlite3'
  gem 'rspec-rails', '2.6.1'
  gem 'annotate', '2.4.0'
end

group :test do
  gem 'sqlite3'
  gem 'rspec-rails', '2.6.1'
  gem 'webrat', '0.7.1'
  gem 'spork', '0.9.0.rc8'
  gem 'factory_girl_rails', '1.0'
  gem 'autotest', '4.4.6'
  gem 'autotest-rails-pure', '4.1.2'
  gem 'autotest-fsevent', '0.2.4'
  gem 'autotest-growl', '0.2.9'
end


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end

gem 'jquery-rails'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end
