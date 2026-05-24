class CheckInstallsTui < Formula
  desc "Terminal UI for browsing installed packages across package managers"
  homepage "https://github.com/sebidc/check-installs-tui"
  url "https://github.com/sebidc/check-installs-tui/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "6c7d7a1350bcc373c800166a6e5f0e4d9819c2aba31ffe8034f55388413cabe5"
  license "MIT"

  depends_on "fzf"

  def install
    bin.install "check-installs-tui"
  end
end
