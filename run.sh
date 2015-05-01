killall redis-server
killall ruby
rm .zeus.sock
foreman start -f Procfile.dev