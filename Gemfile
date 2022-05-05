source 'https://rubygems.org'
ruby '2.6.3'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '5.0.2'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jquery-turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'bootstrap-sass'
gem 'devise', '~> 4.2'
gem 'paperclip', '~> 5.0.0.beta'
gem 'aws-sdk'
gem 'masonry-rails', '~> 0.2.0'
gem 'will_paginate', '~> 3.0'
gem 'will_paginate-bootstrap'
gem 'omniauth', '~> 1.6'
gem 'omniauth-facebook', '~> 4.0'
gem 'toastr-rails', '~> 1.0'

group :development, :test do
	gem 'sqlite3'
	gem 'byebug'
	gem 'rspec-rails'
  gem 'capybara'
end	

group :production do
	gem 'pg'
	gem 'rails_12factor'
end

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  gem 'listen'
  gem 'capistrano-rails'
end

# Use Unicorn as the app server
# gem 'unicorn'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]