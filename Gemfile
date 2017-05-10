source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.0'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem "haml-rails", "~> 0.9"


group :development, :test do
  gem 'capybara', '~> 2.13.0'
  gem 'pry-byebug'
  gem 'shoulda-matchers'
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  gem 'database_cleaner'
  gem 'cucumber-rails', '~> 1.4', '>= 1.4.5'
  gem 'coveralls', require: false
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
