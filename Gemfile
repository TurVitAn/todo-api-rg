source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'

gem 'bcrypt', '~> 3.1', '>= 3.1.16'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'jwt_sessions', '~> 2.6'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'rails', '~> 6.1.4'
gem 'redis', '~> 4.3', '>= 4.3.1'

group :development, :test do
  gem 'bullet', '~> 6.1', '>= 6.1.4'
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails', '~> 6.2'
  gem 'ffaker', '~> 2.18'
  gem 'rails-controller-testing', '~> 1.0', '>= 1.0.5'
  gem 'rspec_junit_formatter', '~> 0.4.1'
  gem 'rspec-rails', '~> 5.0', '>= 5.0.1'
  gem 'rubocop-performance', '~> 1.11', '>= 1.11.3', require: false
  gem 'rubocop-rails', '~> 2.9', '>= 2.9.1', require: false
  gem 'rubocop-rspec', '~> 2.2', require: false
  gem 'shoulda-matchers', '~> 4.5', '>= 4.5.1'
end

group :development do
  gem 'brakeman', '~> 5.0', '>= 5.0.4'
  gem 'bundler-audit', '~> 0.8.0'
  gem 'fasterer', '~> 0.9.0', require: false
  gem 'listen', '~> 3.3'
  gem 'overcommit', '~> 0.58.0', require: false
  gem 'spring', '2.1.1'
end

group :test do
  gem 'simplecov', '~> 0.21.2', require: false
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
