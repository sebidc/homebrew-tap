class CheckInstallsTui < Formula
  desc "Terminal UI for browsing installed packages across package managers"
  homepage "https://github.com/sebidc/check-installs-tui"
  url "https://github.com/sebidc/check-installs-tui/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "3479fee35d01985ea4cf8705a7dc8977c2455ac1ffa343ce2e78e64a54dec0ec"
  license "MIT"

  def install
    bin.install "check-installs-tui"
    bin.install_symlink "check-installs-tui" => "ci"
  end
end
