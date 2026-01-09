class Renamed < Formula
  desc "AI-powered file renaming, PDF extraction, and document splitting CLI"
  homepage "https://renamed.to"
  version "1.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/upspawn/cli.renamed.to/releases/download/%40renamed-to%2Fcli%401.1.2/renamed-darwin-arm64.tar.gz"
      sha256 "fc480154e152df5f2ae668a8bc75dfd724ac1ed4253777ee02ae0c636c06bd11"
    end
    on_intel do
      url "https://github.com/upspawn/cli.renamed.to/releases/download/%40renamed-to%2Fcli%401.1.2/renamed-darwin-x64.tar.gz"
      sha256 "afa38b9b6ab4b62994fdd60449930ba9e80c7803cb6ef55b28ab646b7588ed79"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/upspawn/cli.renamed.to/releases/download/%40renamed-to%2Fcli%401.1.2/renamed-linux-arm64.tar.gz"
      sha256 "10dd7a25ceac4f1995ed97d60ad439b42d47792d22ec30f4e7ba363f99011a39"
    end
    on_intel do
      url "https://github.com/upspawn/cli.renamed.to/releases/download/%40renamed-to%2Fcli%401.1.2/renamed-linux-x64.tar.gz"
      sha256 "910b4c281ce4ebf07a107817ca043fd17cd08feb2dc9105b4592abb69b92431f"
    end
  end

  def install
    bin.install "renamed"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/renamed --version")
  end
end
