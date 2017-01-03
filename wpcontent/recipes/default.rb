directory "/srv/www/hanpage/current/wp-content" do
  mode 0775
  action :create
  owner 'deploy'
  group 'www-data'
end
