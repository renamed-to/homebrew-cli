class Renamed < Formula
  desc "AI-powered file renaming, PDF extraction, and document splitting CLI"
  homepage "https://renamed.to"
  version "@renamed-to/cli@1.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/upspawn/cli.renamed.to/releases/download/v#{version}/renamed-darwin-arm64.tar.gz"
      sha256 "8ba2c4f5db34b45d50c24984501c329de43d80e8c1fc744b2a41aae62b475d37"
    end
    on_intel do
      url "https://github.com/upspawn/cli.renamed.to/releases/download/v#{version}/renamed-darwin-x64.tar.gz"
      sha256 "8ba2c4f5db34b45d50c24984501c329de43d80e8c1fc744b2a41aae62b475d37"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/upspawn/cli.renamed.to/releases/download/v#{version}/renamed-linux-arm64.tar.gz"
      sha256 "8ba2c4f5db34b45d50c24984501c329de43d80e8c1fc744b2a41aae62b475d37"
    end
    on_intel do
      url "https://github.com/upspawn/cli.renamed.to/releases/download/v#{version}/renamed-linux-x64.tar.gz"
      sha256 "8ba2c4f5db34b45d50c24984501c329de43d80e8c1fc744b2a41aae62b475d37"
    end
  end

  def install
    bin.install "renamed"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/renamed --version")
  end
end
