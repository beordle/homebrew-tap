class Termtunnel < Formula
  desc "Cross-platform terminal tunnel tool"
  homepage "https://github.com/beordle/termtunnel"
  url "https://github.com/beordle/termtunnel/archive/refs/tags/version-1.6.4.tar.gz"
  sha256 "35be0f2dc4fa5a76da2bd731c9aae3801342b094ed6df1dcd7fbde6e67c5a8c5"
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
