# Check nginx is enabled and running
sudo systemctl is-enabled nginx
sudo systemctl is-active nginx

# Check site1.server.test is working
curl -s --resolve site1.server.test:80:127.0.0.1 http://site1.server.test/ | grep "h1"
curl -s --resolve site1.server.test:80:127.0.0.1 http://site1.server.test/ -w "%{http_code}\n" -o /dev/null

# Check site2.server.test is working
curl -s --resolve site2.server.test:80:127.0.0.1 http://site2.server.test/| grep "h1"
curl -s --resolve site2.server.test:80:127.0.0.1 http://site2.server.test/ -w "%{http_code}\n" -o /dev/null
