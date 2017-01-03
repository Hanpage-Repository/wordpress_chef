directory "/srv/www/hanpage/current/wp-content/uploads" do
  mode 0744
  action :create
  owner 'deploy'
  group 'www-data'
end
