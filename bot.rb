#!/usr/bin/env ruby

$LOAD_PATH.unshift("#{File.dirname(__FILE__)}/lib")

require 'twitterbot/twitterbot'

if Process.uid == 0 && RUBY_PLATFORM !~ /mswin|mingw|cygwin/
  puts 'Please do not start this program as root.'
  exit 1
end

bot = TwitterBot::TwitterBot.new
bot.start
