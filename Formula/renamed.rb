class Renamed < Formula
  desc "AI-powered file renaming, PDF extraction, and document splitting CLI"
  homepage "https://renamed.to"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/upspawn/cli.renamed.to/releases/download/%40renamed-to%2Fcli%401.2.0/renamed-darwin-arm64.tar.gz"
      sha256 "033dfbae978336ce3ec936d0ee40629e75aeabc27e95564b3097a9ef830a7e31"
    end
    on_intel do
      url "https://github.com/upspawn/cli.renamed.to/releases/download/%40renamed-to%2Fcli%401.2.0/renamed-darwin-x64.tar.gz"
      sha256 "d6ec001b55181b600b5260464fa117d4e11b96c5cffee32ba49351dc8ed233b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/upspawn/cli.renamed.to/releases/download/%40renamed-to%2Fcli%401.2.0/renamed-linux-arm64.tar.gz"
      sha256 "13bbe0710ac3e112a5696a0c8be7a312627b9bcd6987e3cb97bcb151a9964730"
    end
    on_intel do
      url "https://github.com/upspawn/cli.renamed.to/releases/download/%40renamed-to%2Fcli%401.2.0/renamed-linux-x64.tar.gz"
      sha256 "c8c0a3f04eb4f389f2e3514609cb12ac756205147db865dd960f059e84ff2863"
    end
  end

  def install
    bin.install "renamed"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/renamed --version")
  end
end
