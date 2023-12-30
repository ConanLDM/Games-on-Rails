source 'http://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.2'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails', '~> 7.1'

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem 'sprockets-rails'

# Use postgresql as the database for Active Record
gem 'pg', '~> 1.5.4'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '~> 6.4.0'

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem 'importmap-rails'

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem 'turbo-rails', '~> 2.0.0.pre.beta'

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem 'stimulus-rails'

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem 'jbuilder'

# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[ mingw mswin x64_mingw jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Use Sass to process CSS
# gem "sassc-rails"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem 'image_processing', '~> 1.2'

gem 'nokogiri', '~> 1.15', '>= 1.15.4'

gem 'open-uri'

# For markdown conversion
gem 'pandoc-ruby'

gem 'sassc-rails'

gem 'faker'

gem 'simple_form'

gem 'bundler-audit'

# fontawesome for icons such as the gamepoad
gem 'font-awesome-sass', '~> 6.5.0'

# For pagination and less rcords appearing per page
gem 'pagy', '~> 6.2'

# For records showing their titles instead of record ID's
gem 'friendly_id', '~> 5.4.0'

# For authenticaton
gem 'devise'

# For further Devise configuration and security
gem 'devise-security'

# For restricting users from using commonly used passwords
gem 'devise-uncommon_password'

# For the removal fo leftover code
gem 'leftovers', require: false

# Administration platform
gem "administrate"

# For Administrate running with ActiveStorage
gem "administrate-field-active_storage"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i[ mri mingw x64_mingw ]
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem 'web-console'
  gem 'rspec-rails', '~> 6.0.3'
  gem 'factory_bot_rails'
  gem 'shoulda-matchers'
  gem 'capybara'
  gem 'webdrivers'
  gem 'selenium-webdriver'
  gem 'cuprite'

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

gem 'dockerfile-rails', '>= 1.6', :group => :development

gem 'kamal', '~> 1.3'
