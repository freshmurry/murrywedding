# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

require 'rake'
require 'bundler'
require Bundler.load.gems.find{|i| i.name == 'delayed_job'}.gem_dir + "/lib/delayed/tasks"

Rails.application.load_tasks