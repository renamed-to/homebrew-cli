class Renamed < Formula
  desc "AI-powered file renaming, PDF extraction, and document splitting CLI"
  homepage "https://renamed.to"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/upspawn/cli.renamed.to/releases/download/%40renamed-to%2Fcli%400.1.4/renamed-darwin-arm64.tar.gz"
      sha256 "2a331e1fd2e3522cd7aee4b97a5f067158e8550f560a2453e7e18112fd946b1d"
    end
    on_intel do
      url "https://github.com/upspawn/cli.renamed.to/releases/download/%40renamed-to%2Fcli%400.1.4/renamed-darwin-x64.tar.gz"
      sha256 "921c84f681edf177f6570671294bbb57b2e003c3bf703ab76864007adc001a48"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/upspawn/cli.renamed.to/releases/download/%40renamed-to%2Fcli%400.1.4/renamed-linux-arm64.tar.gz"
      sha256 "185d6bb7f0df1ef95fe549d212ee40cfb15dc591feff7758dfb0c17becfe900a"
    end
    on_intel do
      url "https://github.com/upspawn/cli.renamed.to/releases/download/%40renamed-to%2Fcli%400.1.4/renamed-linux-x64.tar.gz"
      sha256 "b9d47b143ce8438a0cfaa718047428915cbe7367a38931854de30be8125d1767"
    end
  end

  def install
    bin.install "renamed"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/renamed --version")
  end
end
