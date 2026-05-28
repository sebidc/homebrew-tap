class CheckInstallsTui < Formula
  desc "Terminal UI for browsing installed packages across package managers"
  homepage "https://github.com/sebidc/check-installs-tui"
  url "https://github.com/sebidc/check-installs-tui/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "9ce581053932d794a2ad9da6920c35deaeb13f32a69648f30aa23f4a1cf780b4"
  license "MIT"

  def install
    bin.install "check-installs-tui"
    bin.install_symlink "check-installs-tui" => "ci"
  end
end
