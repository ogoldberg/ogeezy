require "rack/test"
require "test/unit"

#Always use local Ogeezy first
d = File.join(File.dirname(__FILE__), "..", "lib")
$LOAD_PATH.unshift File.expand_path(d)

require "ogeezy"