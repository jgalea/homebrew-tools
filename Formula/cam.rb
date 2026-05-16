class Cam < Formula
  desc "Viewfinder and capture from a Mac camera (incl. iPhone Continuity Camera) in the terminal"
  homepage "https://github.com/jgalea/cam-cli"
  url "https://github.com/jgalea/cam-cli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "5d81c3fde50124843200fc81f064e68e97e8b3bfe198f241b3b9b53b999c8ee5"
  license "MIT"
  head "https://github.com/jgalea/cam-cli.git", branch: "main"

  depends_on :macos
  depends_on macos: :ventura
  depends_on xcode: ["13.0", :build]

  def install
    system "make"
    bin.install "cam"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cam --version")
  end
end
