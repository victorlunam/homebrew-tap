# Template for Formula/kuukura.rb in victorlunam/homebrew-tap. The release workflow fills in the @...@ values from
# the release's checksums.txt (scripts/homebrew/render.sh); do not edit the tap's copy by hand.
class Kuukura < Formula
  desc "CLI for kuukura, a self-hosted secrets vault for small teams"
  homepage "https://github.com/victorlunam/kuukura"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.10/kuukura_2026.10.10_darwin_arm64.tar.gz"
      sha256 "23cbb18e3f0b3ee13a6193d03bc8011e21663a94dd7caf11629f17e5ea714790"
    end
    on_intel do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.10/kuukura_2026.10.10_darwin_amd64.tar.gz"
      sha256 "83fa2f18468ea2692367f672e346ef4509a5de437b1cd0e1a362c27fd9c83859"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.10/kuukura_2026.10.10_linux_arm64.tar.gz"
      sha256 "101804444a75d3bc5599a43051c9c59c615ffb0af7b78ce50ee7ee7dc2dc9c14"
    end
    on_intel do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.10/kuukura_2026.10.10_linux_amd64.tar.gz"
      sha256 "86e976402b665e387148168ede16c8a18fc075522e64c6cfb0ae900345197848"
    end
  end

  def install
    bin.install "ku", "kuukura"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ku --version")
  end
end
