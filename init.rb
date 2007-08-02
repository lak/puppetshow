at_exit do
  require "irb"
  require "drb/acl"
  require "mysql"
end

load "script/server"
