# Template for Formula/kuukura.rb in victorlunam/homebrew-tap. The release workflow fills in the @...@ values from
# the release's checksums.txt (scripts/homebrew/render.sh); do not edit the tap's copy by hand.
class Kuukura < Formula
  desc "CLI for kuukura, a self-hosted secrets vault for small teams"
  homepage "https://github.com/victorlunam/kuukura"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.4/kuukura_2026.10.4_darwin_arm64.tar.gz"
      sha256 "e8b8eb62b10d30dda8fff8869510fbe9f7f200970b53b99336bae60f4426699b"
    end
    on_intel do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.4/kuukura_2026.10.4_darwin_amd64.tar.gz"
      sha256 "7acfb8f1bd6932663110cca93aa1f596bcca6dcfa3f701e9adff9782fcd42073"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.4/kuukura_2026.10.4_linux_arm64.tar.gz"
      sha256 "d3a1d2c935aa1b09137b8a841e710f6433662420a64b16a552619d5cd0da1139"
    end
    on_intel do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.4/kuukura_2026.10.4_linux_amd64.tar.gz"
      sha256 "0fafd90c63eb6969f8e4dd9e50acfffce59a3554fe442a280106997b35a7377e"
    end
  end

  def install
    bin.install "ku", "kuukura"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ku --version")
  end
end
