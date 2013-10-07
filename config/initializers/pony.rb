Pony.options = {
  :to => 'phamkhanh90@gmail.com',
  :via => :smtp,
  :via_options => {
    :address => 'smtp.gmail.com',
    :port => '587',
    :enable_starttls_auto => true,
    :user_name => 'phamkhanh90',
    :password => '6/4/1990',
    :authentication => :plain, # :plain, :login, :cram_md5, no auth by default
    :domain => "localhost.localdomain" # the HELO domain provided by the client to the server
  }
}
