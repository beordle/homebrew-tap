class Termtunnel < Formula
  desc "Terminal tunnel tool over tty"
  homepage "https://github.com/beordle/termtunnel"
  url "https://github.com/beordle/termtunnel/archive/refs/tags/version-1.5.4.tar.gz"
  sha256 "bce2574a5762329cefda363136b1ae69b220d0047f805a8ea31ee61ec8fec704"
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
