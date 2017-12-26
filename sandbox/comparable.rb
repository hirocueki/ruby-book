class Tempo
    include Comparable

    attr_reader :bpm

    def initialize(bpm)
        @bpm = bpm
    end

    # <=>はComparableモジュールで使われる演算子（メソッド）
    def <=>(other)
        if other.is_a?(Tempo)
            bpm <=> other.bpm
        else
            nil
        end
    end

    # irbで結果を見やすくするためにinspectメソッドをオーバーライド
    def inspect
        "#{bpm}bpm"
    end
end