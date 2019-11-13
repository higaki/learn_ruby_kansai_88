require 'test/unit'
require_relative './ex3'

using RubyKansai

class TestCambridge < Test::Unit::TestCase
  def test_cambridge
    [ ["",         ""],
      ["0",        "0"],
      ["01",       "01"],
      ["012",      "012"],
      ["0123",     "0213"],
      ["012345",   "021435"],
      ["0123456",  "0214356"],
      ["い",       "い"],
      ["いろは",   "いろは"],
      ["いろはに", "いはろに"],
    ].each do |src, expectation|
      assert_equal(expectation, src.cambridge)
    end
  end
end

# >> Loaded suite /home/higaki/ruby/learn/88/learn_ruby_kansai_88/xmpfilter.tmpfile_24130-1
# >> Started
# >> .
# >> Finished in 0.0011409 seconds.
# >> -------------------------------------------------------------------------------
# >> 1 tests, 10 assertions, 0 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications
# >> 100% passed
# >> -------------------------------------------------------------------------------
# >> 876.50 tests/s, 8765.01 assertions/s
