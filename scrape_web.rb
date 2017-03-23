require 'open-uri'
require 'nokogiri'

url = ARGV[0]

charset = nil
html = open(url) do |f|
  charset = f.charset
  f.read
 end

doc = Nokogiri::HTML.parse(html, nil, charset)

p doc.title
