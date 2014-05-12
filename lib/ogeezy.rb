require "ogeezy/version"
require "ogeezy/routing"
require "ogeezy/dependencies"
require "ogeezy/util"
require "ogeezy/array"
require "ogeezy/controller"


module Ogeezy
  class Application
    def call(env)
      if env['PATH_INFO'] == '/favicon.ico'
        return [404,
          {'Content-Type' => 'text/html'}, []]
      end

      klass, act = get_controller_and_action(env)
      controller = klass.new(env)
      text = controller.send(act)
      [200, {'Content-Type' => 'text/html'},
      [text]]
    end
  end
end
