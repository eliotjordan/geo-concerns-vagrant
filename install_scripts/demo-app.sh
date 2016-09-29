#!/bin/sh
cd
mkdir demos
cd demos
rails new geo-concerns-demo --skip-spring
cd geo-concerns-demo
echo "gem 'geo_concerns', git: 'https://github.com/projecthydra-labs/geo_concerns.git', branch: 'workshop'" >> Gemfile
bundle install
sudo bundle install
rails generate curation_concerns:install -f
rails generate geo_concerns:install -f
rake db:migrate

echo "Rails.application.config.active_job.queue_adapter = :inline" >> config/environments/development.rb
echo "Rails.application.config.active_job.queue_adapter = :inline" >> config/environments/production.rb
