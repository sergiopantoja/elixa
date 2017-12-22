require "elixa/version"

module Elixa
  class Placeholder
    def self.generate(width: 100, height: 100)
      "http://via.placeholder.com/#{width}x#{height}"
    end
  end
end
