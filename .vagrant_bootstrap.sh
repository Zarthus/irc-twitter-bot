#!/usr/bin/env bash

apt-add-repository ppa:brightbox/ruby-ng
apt-get update -y && apt-get upgrade -y
apt-get build-dep ruby2.0-dev -y
apt-get install libsqlite3-dev sqlite3 ruby2.2-dev ruby2.2 -y

mv /usr/bin/ruby /usr/bin/ruby-old
mv /usr/bin/gem /usr/bin/gem-old
ln -s /usr/bin/ruby2.2 /usr/bin/ruby
ln -s /usr/bin/gem2.2 /usr/bin/gem

ln -s /vagrant /home/vagrant/twitbot

gem install bundler rake rspec

cd /vagrant

echo "Installing gems.."
sudo -u vagrant bundle install

echo "Running tests.."
sudo -u vagrant bundle exec rspec

echo "Complete!"
