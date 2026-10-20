# Template for Formula/kuukura.rb in victorlunam/homebrew-tap. The release workflow fills in the @...@ values from
# the release's checksums.txt (scripts/homebrew/render.sh); do not edit the tap's copy by hand.
class Kuukura < Formula
  desc "CLI for kuukura, a self-hosted secrets vault for small teams"
  homepage "https://github.com/victorlunam/kuukura"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.9/kuukura_2026.10.9_darwin_arm64.tar.gz"
      sha256 "59d142ee7faa33586abcdefc199ffa911746aace136dab9ed8f6f41d1e1ff272"
    end
    on_intel do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.9/kuukura_2026.10.9_darwin_amd64.tar.gz"
      sha256 "4599e6084def3a45bb2057303b40b5a936ca7725a6e6ea54df4a73e13a305319"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.9/kuukura_2026.10.9_linux_arm64.tar.gz"
      sha256 "0bab4bffbf5ce7ca1dee438e10b50bb3074948e27beb08460bcba3ce095f34aa"
    end
    on_intel do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.9/kuukura_2026.10.9_linux_amd64.tar.gz"
      sha256 "95026072d5c34469703e8966f1869ee17c9a3a4baaac4a2181b4b2bc085567a1"
    end
  end

  def install
    bin.install "ku", "kuukura"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ku --version")
  end
end
