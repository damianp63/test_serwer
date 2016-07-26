def ping(host,port)
   system "ping -c 1 -p #{port} #{host} >/dev/null"
end

if(ping("79.133.47.4","4123"))
  puts "ok"
else
  puts "not work"
end
