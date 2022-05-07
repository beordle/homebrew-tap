class Termtunnel < Formula
  desc "Network tunnel tool over tty as lrzsz can"
  homepage "https://github.com/beordle/termtunnel"
  url "https://github.com/beordle/termtunnel/archive/refs/tags/version-1.4.3.tar.gz"
  sha256 "5f1324cac5f59807f741e5c66d0ede40dad9f2ee57d37284ee95f4cba631af43"
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
