# Template for Formula/kuukura.rb in victorlunam/homebrew-tap. The release workflow fills in the @...@ values from
# the release's checksums.txt (scripts/homebrew/render.sh); do not edit the tap's copy by hand.
class Kuukura < Formula
  desc "CLI for kuukura, a self-hosted secrets vault for small teams"
  homepage "https://github.com/victorlunam/kuukura"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.8/kuukura_2026.10.8_darwin_arm64.tar.gz"
      sha256 "9a4968577eab4ef14bf24830bcdfa610849d78fead6fae0cda81f123300cdda1"
    end
    on_intel do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.8/kuukura_2026.10.8_darwin_amd64.tar.gz"
      sha256 "6cdd6bad467a66d379345594ee7c76d84eb6612417b5c765f1f432b5ea01823c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.8/kuukura_2026.10.8_linux_arm64.tar.gz"
      sha256 "3c05d6509ee3e64015197d26e58e080708171c60204202302a04dedd90495c3b"
    end
    on_intel do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.8/kuukura_2026.10.8_linux_amd64.tar.gz"
      sha256 "30125587d0270be0aba6a14cced926d766ffd03577d43793173e89803584a7db"
    end
  end

  def install
    bin.install "ku", "kuukura"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ku --version")
  end
end
