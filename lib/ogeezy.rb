require "ogeezy/version"
require "ogeezy/array"

module Ogeezy
  class Application
    def call(env)
      `echo debug > debug.txt`;
      [200, {'Content-Type' => 'text/html'},
      ["Hello from Ogeezy!"]]
    end
  end
end
