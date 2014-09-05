require 'nokogiri'

class Dparser
  attr_accessor :url

  def initialize(url)
    @url = url
  end
end