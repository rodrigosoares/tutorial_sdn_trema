source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'phut', github: 'trema/phut', branch: 'develop'
gem 'pio', github: 'trema/pio', branch: 'develop'
gem 'trema', github: 'trema/trema', branch: 'develop'

group :development, :test do
  gem 'awesome_print', require: false
  gem 'colorize', require: false
end
