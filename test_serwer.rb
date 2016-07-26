class SsdbService
  def initialize (port,server="wp.pl")
    @port=port
    @server=server
  end

  def ping
     system "ping -c 1 -p #{@port} #{@server} >/dev/null"
  end

  def ok
    puts "ok"
  end

  def reset
    puts "reset"
  end

end

service=SsdbService.new(8890)
if(service.ping)
  service.ok
else
  service.reset
end
