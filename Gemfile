source 'https://rubygems.org'

gem 'rails', '3.2.12'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'date_validator'
gem 'google-api-client'
gem 'httparty'
gem 'sidekiq'

group :production, :development do
	gem 'pg'
end

group :test do
	gem 'sqlite3'
end

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  #added by toby, docs here: http://foundation.zurb.com/docs/rails.html
  gem 'compass-rails' # you need this or you get an err
  gem 'zurb-foundation', '~> 4.0.0'
end
