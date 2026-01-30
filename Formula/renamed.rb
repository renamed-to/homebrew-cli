class Renamed < Formula
  desc "AI-powered file renaming, PDF extraction, and document splitting CLI"
  homepage "https://renamed.to"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/upspawn/cli.renamed.to/releases/download/%40renamed-to%2Fcli%401.3.0/renamed-darwin-arm64.tar.gz"
      sha256 "00419cec2f48e5b1d2b9be83f0e52ca6a534ac47157379855ccc75e724567be2"
    end
    on_intel do
      url "https://github.com/upspawn/cli.renamed.to/releases/download/%40renamed-to%2Fcli%401.3.0/renamed-darwin-x64.tar.gz"
      sha256 "0a25f3ef18f2a18317f363db96025aef25a0e06e617f7fcdf44a813dcf4dd07e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/upspawn/cli.renamed.to/releases/download/%40renamed-to%2Fcli%401.3.0/renamed-linux-arm64.tar.gz"
      sha256 "beaebcc12b58f587a3cf659ba5671c65292e6862c1020fe86a42b8d5b2746f8b"
    end
    on_intel do
      url "https://github.com/upspawn/cli.renamed.to/releases/download/%40renamed-to%2Fcli%401.3.0/renamed-linux-x64.tar.gz"
      sha256 "aba1419b5f4f5027f827029827c70c8de2fd8b32e1b622ec0f6723c161be0946"
    end
  end

  def install
    bin.install "renamed"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/renamed --version")
  end
end
