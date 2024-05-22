class Termtunnel < Formula
  desc "Terminal tunnel tool like lrzsz"
  homepage "https://github.com/beordle/termtunnel"
  url "https://github.com/beordle/termtunnel/archive/refs/tags/version-1.7.4.tar.gz"
  sha256 "83973300ea77d9186376277032f8b979295e6fa1b47d830ea5bc7049af14a725"
  license "MIT"
  depends_on "cmake" => :build
  def install
    system "cmake", "."
    system "make"
    bin.install "termtunnel"
  end

  test do
    system "#{bin}/termtunnel"
  end
end
