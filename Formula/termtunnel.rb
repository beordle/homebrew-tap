class Termtunnel < Formula
  desc "Network tunnel tool over tty as lrzsz can"
  homepage "https://github.com/beordle/termtunnel"
  url "https://github.com/beordle/termtunnel/archive/refs/tags/version-1.5.1.tar.gz"
  sha256 "49c512f521dec3f6f7f2d267b1e070d213795589024de6036451e4fc291cea61"
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
