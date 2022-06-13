# frozen_string_literal: true

require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:features) do |t|
  t.profile = 'default'

  #Output in html format
  t.cucumber_opts = "./
  --format html --out automation_report#{Time.now.strftime('%Y-%m-%d-%H-%M-%S')}.html --format pretty
  --no-source 
  "

  #Output in json format 
  # t.cucumber_opts = "./
  # --format json --out automation_report#{Time.now.strftime('%Y-%m-%d-%H-%M-%S')}.json --format pretty
  # --no-source 
  # "

  #Output in json format to a specified folder
  # t.cucumber_opts = "./
  # --format json --out results/automation_report#{Time.now.strftime('%Y-%m-%d-%H-%M-%S')}.json --format pretty
  # --no-source 
  # "
end

task default: :features