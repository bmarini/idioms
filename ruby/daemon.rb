# This is a skeleton for a daemon process that behaves well in
# a unix environment.

exit if Process.fork # 1. Fork a child process and exit the parent
Process.setsid       # 2. Establish this process as a new session and process group leader, with no controlling tty
Dir.chdir("/")       # 3. Ensure we are not on a mounted filesystem
File.umask(0000)     # 4. Clear the file mode creation mask for our process

# Trap the signal sent by the kill command; trap other signals now too.
trap("SIGTERM") { Syslog.warning("I died"); exit }

# Use syslog for logging
require 'syslog'
Syslog.open

# Do what you like
loop do
  Syslog.warning "Looping and logging for no reason!"
  sleep(2)
end
