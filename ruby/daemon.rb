# This is a skeleton for a daemon process that behaves well in
# a unix environment.

exit if Process.fork # Fork a child process and exit the parent
trap("SIGTERM") { Syslog.warning("I died"); exit } # Trap the signal sent by the kill command
Process.setsid # Establish this process as a new session and process group leader, with no controlling tty
Dir.chdir("/") # Ensure we are not on a mounted filesystem
File.umask(0000) # Clear the file mode creation mask for our process

# Use syslog for logging
require 'syslog'
Syslog.open

loop do
  Syslog.warning "Looping and logging for no reason!"
  sleep(2)
end
