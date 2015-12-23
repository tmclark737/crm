source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'
# Use postgresql as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
#gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'twitter-bootstrap-rails'
gem 'autoprefixer-rails'
gem "paperclip", "~> 4.2"
gem 'devise', '~> 3.5.1'
gem 'prawn'
gem 'aws-sdk', '< 2.0'
gem 'figaro', '~> 0.7'
gem 'simple_form'
gem 'newrelic_rpm'
gem 'simplecov'
gem 'sitemap_generator', '~> 5.1'
gem 'stripe'
gem 'stripe_event'
gem 'sunspot_rails'
gem 'sunspot_solr' # optional pre-packaged Solr distribution for use in development

#gem "chartkick"



# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development


group :development do

	gem 'better_errors'
	gem 'binding_of_caller'
	gem 'guard-livereload', '~> 2.4', require: false

end

group :development, :test do 
	gem 'pry'
	gem 'pry-rails'
	gem "rspec-rails"
	gem 'rspec-activemodel-mocks'

	
	#start guard with bundle exec guard init rspec, bundle 
	gem "guard-rspec"
end

group :test, :darwin do
  	gem 'rb-fsevent'
end

group :test do
  gem "faker"
  gem "factory_girl_rails"
  gem "capybara"
  gem "shoulda-matchers"

gem 'rails_12factor', group: :production

end
