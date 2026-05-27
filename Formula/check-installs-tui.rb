class CheckInstallsTui < Formula
  desc "Terminal UI for browsing installed packages across package managers"
  homepage "https://github.com/sebidc/check-installs-tui"
  url "https://github.com/sebidc/check-installs-tui/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "c333f5cb8e49065287fc8981379291b1a371385586249d0f88a12a2ae024b866"
  license "MIT"

  depends_on "fzf"

  def install
    bin.install "check-installs-tui"
  end
end
