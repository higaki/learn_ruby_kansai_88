#! /usr/bin/env ruby

module RubyKansai
  refine String do
    def cambridge!
      if size <= 3
        nil
      else
        [*0...size][1..-2].each_slice(2) do |i, j|
          self[i], self[j] = self[j], self[i] if j
        end
        self
      end
    end

    def cambridge
      s = dup
      s.cambridge!
      s
    end
  end
end

if __FILE__ == $0
  using RubyKansai

  text = <<-EOF
    こんにちは みなさん おげんき ですか ? わたしは げんき です 。
    この ぶんしょう は イギリス の ケンブリッジ だいがく の けんきゅう の けっか
    にんげん は もじ を にんしき する とき その さいしょ と さいご の もじさえ
    あっていれば じゅんばん は めちゃくちゃ でも ちゃんと よめる と いう けんきゅう に
    もとづいて わざと もじの じゅんばん を いれかえて あります 。
    どうです ? ちゃんと よめちゃう でしょ ? ちゃんと よめたら はんのう よろしく
  EOF

  puts text.strip.split(/\s+/).map{|i| i.cambridge}.join(' ')
end


# >> こにんちは みさなん おんげき ですか ? わしたは げんき です 。 この ぶしんょう は イリギス の ケブンッリジ だがいく の けきんゅう の けっか にげんん は もじ を にしんき する とき その さしいょ と さいご の もさじえ あてっれいば じんゅばん は めゃちちくゃ でも ちんゃと よめる と いう けきんゅう に もづといて わざと もじの じんゅばん を いかれえて あまりす 。 どでうす ? ちんゃと よちめゃう でしょ ? ちんゃと よためら はのんう よしろく
