require "rubygems"
require "redditkit"
require File.dirname(__FILE__) + "/lib/reddit-unhider"

task :default => :unhide

desc "Unhide all hidden post of an authenticated user on Reddit."
task :unhide do
  RedditUnhider.unhide ENV['USERNAME'], ENV['PASSWORD']
end