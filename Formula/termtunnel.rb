class Termtunnel < Formula
  desc "Network tunnel tool over tty as lrzsz can"
  homepage "https://github.com/beordle/termtunnel"
  url "https://github.com/beordle/termtunnel/archive/refs/tags/version-1.4.2.tar.gz"
  sha256 "574decb333bd3cc1a01d9d0e83d7f235152b4f344a049b26f76bd8ffcc6d8a03"
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
