$:.unshift('.')

require "thor"
require "dparser"

class MyCLI < Thor
  desc "url HTTP_URL", "parse given url"
  def url(url)
    domain = Dparser.new url

    # theloume
    # 1on na min skaei
    # 2on tha ekanei parse to url http://nokogiri.org/tutorials/parsing_an_html_xml_document.html
    # 3on tha psaxnei an iparxei h1 kai tha to ektipwnei
    domain.parse!
  end
end

MyCLI.start(ARGV)