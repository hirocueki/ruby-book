require "minitest/autorun"

class JaruJaru
    def pin(bell)
        "１個多いな！"
    end
end

class JaruJaruTest < Minitest::Test
    def setup
        @j = JaruJaru.new
    end
    def test_pin
        assert_equal "１個多いな！", @j.pin(:ppppp)
    end
end