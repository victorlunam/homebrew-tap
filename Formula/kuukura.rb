# Template for Formula/kuukura.rb in victorlunam/homebrew-tap. The release workflow fills in the @...@ values from
# the release's checksums.txt (scripts/homebrew/render.sh); do not edit the tap's copy by hand.
class Kuukura < Formula
  desc "CLI for kuukura, a self-hosted secrets vault for small teams"
  homepage "https://github.com/victorlunam/kuukura"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.13/kuukura_2026.10.13_darwin_arm64.tar.gz"
      sha256 "cd74015a2057df2385e682a5e171b1d9b7b732df16f287da68715441e417ee7b"
    end
    on_intel do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.13/kuukura_2026.10.13_darwin_amd64.tar.gz"
      sha256 "1861d7bf90855280df78df03af4822e5b0366456908aad2d6a998ff462a0f060"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.13/kuukura_2026.10.13_linux_arm64.tar.gz"
      sha256 "2ae00aeff82ceec90132671dbedaafe9f7b9dff7701a194c50550410be3b63fd"
    end
    on_intel do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.13/kuukura_2026.10.13_linux_amd64.tar.gz"
      sha256 "6d3ea8e96349ec0032274959dcb428159792fe10331d5e2664802b030c778edd"
    end
  end

  def install
    bin.install "ku", "kuukura"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ku --version")
  end
end
