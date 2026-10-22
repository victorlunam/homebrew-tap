# Template for Formula/kuukura.rb in victorlunam/homebrew-tap. The release workflow fills in the @...@ values from
# the release's checksums.txt (scripts/homebrew/render.sh); do not edit the tap's copy by hand.
class Kuukura < Formula
  desc "CLI for kuukura, a self-hosted secrets vault for small teams"
  homepage "https://github.com/victorlunam/kuukura"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.15/kuukura_2026.10.15_darwin_arm64.tar.gz"
      sha256 "e7872936a7cd1c70e76745249ebd4a2e4b0e196723ebd64e560e6d1fcb42cf76"
    end
    on_intel do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.15/kuukura_2026.10.15_darwin_amd64.tar.gz"
      sha256 "2714bdc54d6fecd30fe0a0751ded672c8a090497b81a4b810093e2f51a97bfbf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.15/kuukura_2026.10.15_linux_arm64.tar.gz"
      sha256 "188ad4e2e645f0f8f700d5a26d4789eb3c0db6f66b2e74a5cc46246d85ad55e7"
    end
    on_intel do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.15/kuukura_2026.10.15_linux_amd64.tar.gz"
      sha256 "ab226f14b68c7ddc51abbc3ffb121c3dfe1a895fb2b0030145572408a44be33b"
    end
  end

  def install
    bin.install "ku", "kuukura"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ku --version")
  end
end
