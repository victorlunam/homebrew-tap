# Template for Formula/kuukura.rb in victorlunam/homebrew-tap. The release workflow fills in the @...@ values from
# the release's checksums.txt (scripts/homebrew/render.sh); do not edit the tap's copy by hand.
class Kuukura < Formula
  desc "CLI for kuukura, a self-hosted secrets vault for small teams"
  homepage "https://github.com/victorlunam/kuukura"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.2/kuukura_2026.10.2_darwin_arm64.tar.gz"
      sha256 "94e1fa682f8b284b3bf9f496ea5eced0f30c0d96336bfa695489d40ddd7f3b5c"
    end
    on_intel do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.2/kuukura_2026.10.2_darwin_amd64.tar.gz"
      sha256 "35d376d1fc76251668b79bdd14e4655b9730bb8ab9784952d80396c7bb514ed3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.2/kuukura_2026.10.2_linux_arm64.tar.gz"
      sha256 "eeef327de162dbaaab7b27fae44dfb1c6231ee4f302302d00258cbb6a7a8ee25"
    end
    on_intel do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.2/kuukura_2026.10.2_linux_amd64.tar.gz"
      sha256 "46e3c8ef35deea8d5179e9a20cd2db99e9434a822b2ced95a482deb789c920f2"
    end
  end

  def install
    bin.install "ku", "kuukura"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ku --version")
  end
end
