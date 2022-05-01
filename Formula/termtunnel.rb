class Termtunnel < Formula
  desc "a terminal tunnel tool like lrzsz"
  homepage ""
  url "https://github.com/beordle/termtunnel/archive/refs/tags/v1.4.tar.gz"
  sha256 "d35b97659b2e7357c4ce78767ac31297639615caa29de862099ea5bac4938976"
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
