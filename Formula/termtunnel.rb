class Termtunnel < Formula
  desc "Cross-platform terminal tunnel tool"
  homepage "https://github.com/beordle/termtunnel"
  url "https://github.com/beordle/termtunnel/archive/refs/tags/version-1.7.0.tar.gz"
  sha256 "f58ff13f8defeb5a4c1fc13af15cc2624d971cd1f2e108bc8fa483fcca5d856c"
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
