class YtdTui < Formula
  desc "Keyboard-first terminal UI for yt-dlp with platform search and queueing"
  homepage "https://github.com/sebidc/ytd-tui"
  url "https://github.com/sebidc/ytd-tui/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "ee4893c13f581a07650fab897a1d74242372c81c2f629c362fa1fabeaae28e53"
  license "MIT"

  depends_on "ffmpeg"
  depends_on "python@3.14"
  depends_on "yt-dlp"

  def install
    libexec.install "src"

    (libexec/"ytd-tui").write <<~PYTHON
      #!/usr/bin/env python3
      import sys

      sys.path.insert(0, "#{libexec}/src")

      from ytdlp_tui.__main__ import main


      if __name__ == "__main__":
          main()
    PYTHON

    chmod 0755, libexec/"ytd-tui"
    bin.install_symlink libexec/"ytd-tui" => "ytd-tui"
    bin.install_symlink libexec/"ytd-tui" => "yt-dlp-tui"
  end

  test do
    output = shell_output("#{bin}/ytd-tui --help")
    assert_match "yt-dlp", output
  end
end
