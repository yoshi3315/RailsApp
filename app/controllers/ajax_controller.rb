class AjaxController < ApplicationController
  
  layout 'ajax'
  require 'net/http' 

  def index
  end
  
  def data
    url = URI('http://news.yahoo.co.jp/pickup/rss.xml')
    http = Net::HTTP.new(url.host)
    response = http.get(url)
    @data = Hash.from_xml(response.body).to_json.html_safe
  end
  
end
