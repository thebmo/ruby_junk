# Assertion Tests
require "test/unit"
require_relative "dragons"
include Test::Unit::Assertions


d = Dragon.new("BMO")

b = BlueDragon.new("Juju")

assert_equal("blue", b.color, failure_message = "first dragon color")
assert_equal("non -", d.color, failure_message = "second dragon color")
assert(b.armor > 0, failure_message = "armor test: #{b.armor} < 0")
