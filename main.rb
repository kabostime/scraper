require "gammo"
require 'open-uri'

parser = URI.open('https://google.com') { |f| Gammo.new(f.read) }
document = parser.parse #=> #<Gammo::Node::Document>

puts document.css('title').first.inner_text #=> 'Google'
