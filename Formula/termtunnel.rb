class Termtunnel < Formula
  desc "Terminal tunnel tool over tty"
  homepage "https://github.com/beordle/termtunnel"
  url "https://github.com/beordle/termtunnel/archive/refs/tags/version-1.6.0.tar.gz"
  sha256 "b6745c13459afef145798b7dbfa595eea5a2f38b9b3600b4d86542234401f886"
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
