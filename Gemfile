source 'https://rubygems.org'

gem 'rails', '3.2.11'

# Database
gem 'pg'
gem "foreigner"

# Improvements
gem 'inherited_resources'
#gem 'has_scope'

# Authentication
gem "devise", "~> 2.1.2"
#gem "omniauth", "~> 1.1.0"
#gem "omniauth-facebook", "~> 1.2.0"
#gem "omniauth-twitter", "~> 0.0.12"
gem "cancan"

# Heroku - Server
gem 'thin'
gem 'heroku'

# Frontend stuff
gem 'jquery-rails'
gem "slim"
gem "slim-rails"
gem 'prettyphoto-rails'

# Tools
gem 'simple_form'
gem 'friendly_id'
gem 'auto_html'
gem 'mail_form'
gem 'tinymce-rails'
gem 'tinymce-rails-imageupload', '~> 3.5.6.3'
gem 'sendgrid'
gem 'feedzirra'

# Administration
gem 'rails_admin'
gem 'rails_admin_import'

# Images
gem 'carrierwave'
gem 'rmagick'
gem 'carrierwave-postgresql'
gem 'postgresql_lo_streamer', git: 'git://github.com/diogob/postgresql_lo_streamer.git'

group :assets do
  gem 'sass-rails',   '~> 3.2.5'
  gem 'coffee-rails', '~> 3.2.2'
  gem "compass-rails", "~> 1.0.3"
  gem 'bootstrap-sass'
  gem 'compass-960-plugin'
  gem 'uglifier', '>= 1.0.3'
end

group :production do
  gem "execjs"
  gem 'therubyracer', :platform => :ruby
end

group :development, :test do
  gem "rspec-rails", ">= 2.11.0"
  gem "shoulda-matchers"
  gem "machinist", ">= 2.0"
  gem "ffaker"
  gem 'database_cleaner'
  gem "capybara"
  gem "jasmine"
  gem "pry"
  gem 'awesome_print'
end
