class Domcheck < Formula
  desc "Bulk domain availability checker using the registries' public RDAP service"
  homepage "https://github.com/jgalea/domcheck"
  url "https://github.com/jgalea/domcheck/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "7585479b3b545800df13f3971ca5fae90c21a8c171c1570bd4d5ac236707d639"
  license "MIT"
  head "https://github.com/jgalea/domcheck.git", branch: "main"

  depends_on "node"

  def install
    libexec.install "domcheck.mjs", "lib.mjs", "package.json"
    bin.install_symlink libexec/"domcheck.mjs" => "domcheck"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/domcheck --help")
  end
end
