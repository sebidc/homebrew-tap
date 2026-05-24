class CheckInstallsTui < Formula
  desc "Terminal UI for browsing installed packages across package managers"
  homepage "https://github.com/sebidc/check-installs-tui"
  url "https://github.com/sebidc/check-installs-tui/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "PASTE_SHA256_HERE"
  license "MIT"

  depends_on "fzf"

  def install
    bin.install "check-installs-tui"
  end
end
