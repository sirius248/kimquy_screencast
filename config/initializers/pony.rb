Pony.options = {
  :to => 'phamkhanh928@gmail.com',
  :via => :smtp,
  :via_options => {
    :address => 'smtp.gmail.com',
    :port => '587',
    :enable_starttls_auto => true,
    :user_name => 'phamkhanh928',
    :password => '6/4/1990',
    :authentication => :plain,
    :domain => "localhost:3000"
  }
}
