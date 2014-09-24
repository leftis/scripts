require 'nokogiri'
require 'open-uri'
require 'element_mapping'

class Dparser
  attr_accessor :url
  attr_accessor :options

  def initialize(url, options)
    @url = url
    @options = options
  end
  
  def parse!
    document = Nokogiri::HTML(opened_site)
    elements = ElementMapping.new(options).map
    file = File.new('out.html', "w")
    begin
      elements.each do |element|
        file.puts document.css(element)
      end
    ensure
      file.close
      system('open out.html')
    end
  end

  def opened_site
    open(@url)
  end
end