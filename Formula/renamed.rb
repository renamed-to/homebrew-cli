class Renamed < Formula
  desc "AI-powered file renaming, PDF extraction, and document splitting CLI"
  homepage "https://renamed.to"
  version "1.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/upspawn/cli.renamed.to/releases/download/v#{version}/renamed-darwin-arm64.tar.gz"
      sha256 "22a421c4b93a3371d0b9d73a252220cb994c0c1957704a1677b8c5a09d3cea90"
    end
    on_intel do
      url "https://github.com/upspawn/cli.renamed.to/releases/download/v#{version}/renamed-darwin-x64.tar.gz"
      sha256 "a4fbda6191073f3993f6927b12b0124abadc6dc9a32cb314ed92fb1984acac21"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/upspawn/cli.renamed.to/releases/download/v#{version}/renamed-linux-arm64.tar.gz"
      sha256 "41967936b65d1efa775d530e82d72a955a8308102d52560cafb51b389cd7b4d3"
    end
    on_intel do
      url "https://github.com/upspawn/cli.renamed.to/releases/download/v#{version}/renamed-linux-x64.tar.gz"
      sha256 "ccccd91361cd3ec3e7046ab5f65177628b25f7c418b26e213c4cc6a0d1303b3f"
    end
  end

  def install
    bin.install "renamed"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/renamed --version")
  end
end
