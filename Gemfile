source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby IO.read('.ruby-version').strip

gem 'bootsnap', '>= 1.4.4', require: false
gem 'name_of_person'
gem 'pagy'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 5.0'
gem 'pundit'
gem 'rails', '~> 6.1.0'
gem 'redis', '~> 4.0'
gem 'sidekiq'
gem 'slim-rails'
gem 'turbolinks', '~> 5'
gem 'view_component'
gem 'webpacker', github: 'rails/webpacker'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'dotenv-rails'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'rspec-rails', '~> 4.0.1'
end

group :development do
  gem 'annotate'
  gem 'listen', '~> 3.2'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'spring'
  gem 'web-console', '>= 4.1.0'
end
