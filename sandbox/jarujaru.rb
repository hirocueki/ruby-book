require "minitest/autorun"

class JaruJaru
    PONS = {
        ppppp: "１個多いな！",
        ppp: "１個少ないな！",
        piiin_pooon: "誰か来ましたよー",
        pooon_piiin: "来ましたよー誰かー",
        piiin: "背筋伸びてるやん。",
        piiin5: "背筋伸び切ってるやーん！"
    }
    def initialize()
        @piiins_stack=0
    end

    def pin(bell)
        if bell == :piiin
            @piiins_stack+=1
        end
        if @piiins_stack == 5
            bell = :piiin5
            @piiins_stack = 0
        end
        PONS[bell]
    end
end

class JaruJaruTest < Minitest::Test
    def setup
        @j = JaruJaru.new
    end
    def test_pin_pon_pan_pon_pin
        assert_equal "１個多いな！", @j.pin(:ppppp)
    end

    def test_pin_pon_pan
        assert_equal "１個少ないな！", @j.pin(:ppp)
    end

    def test_piiin_pooon
        assert_equal "誰か来ましたよー", @j.pin(:piiin_pooon) 
        assert_equal "来ましたよー誰かー", @j.pin(:pooon_piiin) 
    end

    def test_piiin
        4.times { assert_equal "背筋伸びてるやん。", @j.pin(:piiin) }
        assert_equal "背筋伸び切ってるやーん！", @j.pin(:piiin)
        assert_equal "背筋伸びてるやん。", @j.pin(:piiin)
    end
end