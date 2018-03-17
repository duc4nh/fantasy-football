source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

ruby '2.3.1'

gem 'rails', '~> 5.0.3'
gem 'pg', '~> 0.21.0'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'jbuilder', '~> 2.5'

group :test do
  gem 'database_cleaner'
  gem 'guard-rspec'
  gem 'launchy'
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
  gem 'rails-controller-testing'
end

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'factory_girl_rails'
  gem 'rspec-rails', '~> 3.5'
  gem 'pry-rails'
  gem 'rack-mini-profiler'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'rubocop', '~> 0.49.0', require: false
  gem 'erb2haml'
  gem 'annotate', require: false
end

group :production do
  gem 'rails_12factor'
end

gem 'haml'
gem 'faker', '~> 1.7', '>= 1.7.3'
gem 'adminlte2-rails', '~> 0.0.6'

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
