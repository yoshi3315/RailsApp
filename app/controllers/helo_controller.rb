class HeloController < ApplicationController
  def index
    msg = '
    <html>
    <body>
      <h1>Sample Page</h1>
      <p>this is Rails sample page!</P>
    </body>
    </html>
    '
    
    render html: msg.html_safe
  end
end
