# frozen_string_literal:true

require_relative 'map'
include Mapping

page_links_array = []
root_uri = 'https://www.calhoun.io/'
page_links_array << root_uri
page_links_array.each do |page_link|
  page_links_array = Mapping.get_link(root_uri, page_link, page_links_array)
end
File.open('Sitemap.xml', 'w') { |f| f.write(Mapping.create_xml(page_links_array)) }
