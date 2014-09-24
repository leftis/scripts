require 'pry'

class ElementMapping
  attr_accessor :options

  def initialize(options)
    @options = options
  end

  def map
    elements = []
    @options.keys.map do |key|
      case key
      when "images"
        elements.push "img"
      when "headings"
        elements += ["h1", "h2", "h3", "h4", "h5"]
      when "links"
        elements.push "a"
      else
      end
    end
    elements
  end
end