# Template for Formula/kuukura.rb in victorlunam/homebrew-tap. The release workflow fills in the @...@ values from
# the release's checksums.txt (scripts/homebrew/render.sh); do not edit the tap's copy by hand.
class Kuukura < Formula
  desc "CLI for kuukura, a self-hosted secrets vault for small teams"
  homepage "https://github.com/victorlunam/kuukura"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.5/kuukura_2026.10.5_darwin_arm64.tar.gz"
      sha256 "8059fc28ff6561ed353088c0333b921b12e0e84d9324245520119a9b586ffa96"
    end
    on_intel do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.5/kuukura_2026.10.5_darwin_amd64.tar.gz"
      sha256 "ad2f1e74d9cffa3f7a0d89a7845394f9348db889a6ad576f47da422419024fcd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.5/kuukura_2026.10.5_linux_arm64.tar.gz"
      sha256 "a01c1a8d165a986f47fd4e6b1478f16c3727e929ed6ba309b6b0faa0e5c4eb12"
    end
    on_intel do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.5/kuukura_2026.10.5_linux_amd64.tar.gz"
      sha256 "267cf6d144a9c468cf734813c10a765ca883b2ca497f55dbfeae320fc71ed9a3"
    end
  end

  def install
    bin.install "ku", "kuukura"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ku --version")
  end
end
