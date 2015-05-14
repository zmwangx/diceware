require "formula"

class Diceware < Formula
  homepage "https://github.com/zmwangx/diceware"
  url "https://github.com/zmwangx/diceware/archive/0.1.tar.gz"
  sha256 "03ac40c4561039b7d2cf65ccb7648dd8a43be2a8c759c2d575d2377110ef6004"

  def install
    system "make"
    bin.install "diceware"
    man1.install "diceware.1"
  end

  def test
    assert_equal `#{bin}/diceware`.split().length(), 10
  end
end
