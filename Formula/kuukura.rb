# Template for Formula/kuukura.rb in victorlunam/homebrew-tap. The release workflow fills in the @...@ values from
# the release's checksums.txt (scripts/homebrew/render.sh); do not edit the tap's copy by hand.
class Kuukura < Formula
  desc "CLI for kuukura, a self-hosted secrets vault for small teams"
  homepage "https://github.com/victorlunam/kuukura"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.6/kuukura_2026.10.6_darwin_arm64.tar.gz"
      sha256 "858342bd5f9709febfd366c54e7872a3dac0f75d7fae397fae69d08686cb7963"
    end
    on_intel do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.6/kuukura_2026.10.6_darwin_amd64.tar.gz"
      sha256 "35d58fc29254e61a8211829313ba3212b6fb399cc2c1e3246cda9fa72bcb3694"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.6/kuukura_2026.10.6_linux_arm64.tar.gz"
      sha256 "6f366908ac58f8701b6ba90008ea04e87bcf3862fd69520b696de5856dc7f95c"
    end
    on_intel do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.6/kuukura_2026.10.6_linux_amd64.tar.gz"
      sha256 "4f09bc95d30df99416d496b4747e4db888bbee2248eeb6b8177baa203dbf8a05"
    end
  end

  def install
    bin.install "ku", "kuukura"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ku --version")
  end
end
