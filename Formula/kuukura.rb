# Template for Formula/kuukura.rb in victorlunam/homebrew-tap. The release workflow fills in the @...@ values from
# the release's checksums.txt (scripts/homebrew/render.sh); do not edit the tap's copy by hand.
class Kuukura < Formula
  desc "CLI for kuukura, a self-hosted secrets vault for small teams"
  homepage "https://github.com/victorlunam/kuukura"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.11/kuukura_2026.10.11_darwin_arm64.tar.gz"
      sha256 "622648bf204331e533b2a8a4bd6cccaf457a14f82037eca0f88cf048f0746f54"
    end
    on_intel do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.11/kuukura_2026.10.11_darwin_amd64.tar.gz"
      sha256 "56ea749538340b52bcba27ee6da2adbb749f5770878a26a507c8c3b816a0a97f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.11/kuukura_2026.10.11_linux_arm64.tar.gz"
      sha256 "e41f73767c14377aba45e8a2679cf802f74b03e91fd341a037743507152a54d9"
    end
    on_intel do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.11/kuukura_2026.10.11_linux_amd64.tar.gz"
      sha256 "586591be3c11ded89cb9c63af4ae70126d0d59eee8d7b8c58f0d2577f73e624b"
    end
  end

  def install
    bin.install "ku", "kuukura"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ku --version")
  end
end
