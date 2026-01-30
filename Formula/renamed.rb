class Renamed < Formula
  desc "AI-powered file renaming, PDF extraction, and document splitting CLI"
  homepage "https://renamed.to"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/upspawn/cli.renamed.to/releases/download/%40renamed-to%2Fcli%401.3.0/renamed-darwin-arm64.tar.gz"
      sha256 "8553eb922bc3fe7d0ce5b5a1544c05585b78f7dac1ea82f61d275e790c9b5dac"
    end
    on_intel do
      url "https://github.com/upspawn/cli.renamed.to/releases/download/%40renamed-to%2Fcli%401.3.0/renamed-darwin-x64.tar.gz"
      sha256 "921c84f681edf177f6570671294bbb57b2e003c3bf703ab76864007adc001a48"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/upspawn/cli.renamed.to/releases/download/%40renamed-to%2Fcli%401.3.0/renamed-linux-arm64.tar.gz"
      sha256 "bce3981d49e6e0f561d4e3aa0e250467c8f04e2b64dec54ac3655662648c444f"
    end
    on_intel do
      url "https://github.com/upspawn/cli.renamed.to/releases/download/%40renamed-to%2Fcli%401.3.0/renamed-linux-x64.tar.gz"
      sha256 "d95220e8a4090a09dc8622a802abfebc9ff4794bd69fd16824c59badb846067d"
    end
  end

  def install
    bin.install "renamed"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/renamed --version")
  end
end
