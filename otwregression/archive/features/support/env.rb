$LOAD_PATH << File.expand_path('../../../lib/sites', __FILE__)
require 'rubygems'
require 'bundler/setup'
require 'rspec'
require 'taza'
require 'archive'
require 'watir-webdriver'

ENV["TAZA_ENV"] ||= 'isolation'

Before do 
 @site = Archive.new
end

After do |scenario|
  # @site.header.save_screenshot
  # embed("screenshot.png", "image/png")
  @site.header.quit
end



