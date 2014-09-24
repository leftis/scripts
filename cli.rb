$:.unshift('.')

require "thor"
require "dparser"

class MyCLI < Thor
  desc "url HTTP_URL --headings --images --links", "parse given url"
  option :images, type: :boolean
  option :headings, type: :boolean
  option :links, type: :boolean

  def url(url)
    domain = Dparser.new(url, options)
    puts domain.options
    document = domain.parse!
  end
end

MyCLI.start(ARGV)
