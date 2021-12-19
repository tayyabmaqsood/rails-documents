# frozen_string_literal:true

require 'nokogiri'
require 'open-uri'
module Mapping
  def add_links_in_array(page_links_array, link)
    page_links_array << link
  end

  def get_link(root_uri, page_link, page_links_array)
    p page_link
    page = Nokogiri::HTML(URI.open(page_link))
    page.css('a').each do |sitelink|
      link = sitelink['href'].to_s
      unless link.length.zero? || (page_links_array.include? link)
        if link.start_with? root_uri
          add_links_in_array(page_links_array, link)
        elsif (link.start_with? '/') && link.length > 1
          link = root_uri + link.sub(link[0], '')
          add_links_in_array(page_links_array, link) unless page_links_array.include? link
        end
      end
    end
    page_links_array
  end

  def create_xml(pages_links)
    xmlns = Nokogiri::XML::Builder.new do |xml|
      xml.urlset('xmlns' => 'http://www.sitemaps.org/schemas/sitemap/0.9') do
        pages_links.each do |link|
          xml.url { xml.loc link }
        end
      end
    end
    xmlns.to_xml
  end
end
