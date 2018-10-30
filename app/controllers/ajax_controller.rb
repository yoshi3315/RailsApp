class AjaxController < ApplicationController
  
  layout 'ajax'
  require 'net/http' 

  def index
  end
  
  def data
    url = URI('http://queryfeed.net/twitter?q=%E3%83%8B%E3%83%83%E3%82%B9%E3%82%A4+EPA&title-type=user-name-both')
    http = Net::HTTP.new(url.host)
    response = http.get(url)
    @data = Hash.from_xml(response.body).to_json.html_safe
  end
  
end
