$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'pry'

require 'codecreep/init_db'
require 'codecreep/github'
require "codecreep/version"


module Codecreep
  class App
    def initialize
      @github = Github.new
      @current_name = nil
  end
  end
end

# app = Codecreep::App.new
# binding.pry
