require 'open-uri'
require 'rexml/document'

def stampa(isbn)
	open("http://opmi.labs.oreilly.com/product/#{isbn}") do |xml|
		doc = REXML::Document.new(xml) 

		base_xpath = "//om:Product[@rdf:about='urn:x-domain:oreilly.com:product:#{isbn}.BOOK']"

  		title = REXML::XPath.first(doc, base_xpath + "/dc:title")
  		abstract = REXML::XPath.first(doc, base_xpath + "/dc:abstract")
  		author = REXML::XPath.first(doc, base_xpath + "/om:byline")


  		puts "#{isbn}"
  		puts "\t#{title.text unless title.nil?} #{author.text unless author.nil?}"
  		puts "\t#{abstract.text}"
	end
end

def cover_img(isbn)
	"http://akamaicovers.oreilly.com/images/#{isbn}/cat.gif"
end


#stampa('9781934356470') #9781449397494')