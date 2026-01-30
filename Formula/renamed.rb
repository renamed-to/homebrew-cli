class Renamed < Formula
  desc "AI-powered file renaming, PDF extraction, and document splitting CLI"
  homepage "https://renamed.to"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/upspawn/cli.renamed.to/releases/download/%40renamed-to%2Fcli%400.1.3/renamed-darwin-arm64.tar.gz"
      sha256 "94b0694322cf1af88f743f9d6b10bc9ddf35cc184d64c7ab5be40195d9d8f50c"
    end
    on_intel do
      url "https://github.com/upspawn/cli.renamed.to/releases/download/%40renamed-to%2Fcli%400.1.3/renamed-darwin-x64.tar.gz"
      sha256 "71814fa70c8c0ad496cf2269421bd952bf5f200223339b0c1051935d4b5e0c6e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/upspawn/cli.renamed.to/releases/download/%40renamed-to%2Fcli%400.1.3/renamed-linux-arm64.tar.gz"
      sha256 "0b903982be8b7525034d07abe2c9ec235eddad528a893fa4f578ecf9bc82dead"
    end
    on_intel do
      url "https://github.com/upspawn/cli.renamed.to/releases/download/%40renamed-to%2Fcli%400.1.3/renamed-linux-x64.tar.gz"
      sha256 "e424eb6638115c3e186189057719c0b0d43383dd8b225d688705f87208f0c9bd"
    end
  end

  def install
    bin.install "renamed"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/renamed --version")
  end
end
