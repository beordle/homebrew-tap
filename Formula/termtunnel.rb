class Termtunnel < Formula
  desc "Cross-platform terminal tunnel tool"
  homepage "https://github.com/beordle/termtunnel"
  url "https://github.com/beordle/termtunnel/archive/refs/tags/version-1.6.2.tar.gz"
  sha256 "da3ba0b8cf8e89f462d5de076c1640a4fa89414fba0d993ba8898314bc54d6a4"
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
