class Renamed < Formula
  desc "AI-powered file renaming, PDF extraction, and document splitting CLI"
  homepage "https://renamed.to"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/upspawn/cli.renamed.to/releases/download/v#{version}/renamed-darwin-arm64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_DARWIN_ARM64"
    end
    on_intel do
      url "https://github.com/upspawn/cli.renamed.to/releases/download/v#{version}/renamed-darwin-x64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_DARWIN_X64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/upspawn/cli.renamed.to/releases/download/v#{version}/renamed-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_LINUX_ARM64"
    end
    on_intel do
      url "https://github.com/upspawn/cli.renamed.to/releases/download/v#{version}/renamed-linux-x64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_LINUX_X64"
    end
  end

  def install
    bin.install "renamed"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/renamed --version")
  end
end
