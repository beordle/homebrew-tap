class Termtunnel < Formula
  desc "Terminal tunnel tool like lrzsz"
  homepage "https://github.com/beordle/termtunnel"
  url "https://github.com/beordle/termtunnel/archive/refs/tags/version-1.7.4.tar.gz"
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
