# Template for Formula/kuukura.rb in victorlunam/homebrew-tap. The release workflow fills in the @...@ values from
# the release's checksums.txt (scripts/homebrew/render.sh); do not edit the tap's copy by hand.
class Kuukura < Formula
  desc "CLI for kuukura, a self-hosted secrets vault for small teams"
  homepage "https://github.com/victorlunam/kuukura"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.12/kuukura_2026.10.12_darwin_arm64.tar.gz"
      sha256 "356e30196ca450803e2cd66bd00c948255aa98a33a92537192df01fa7fcc9bae"
    end
    on_intel do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.12/kuukura_2026.10.12_darwin_amd64.tar.gz"
      sha256 "05d0571b98a1713bab6683e1695a0e7697822aac019994ab8af370411a3e7540"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.12/kuukura_2026.10.12_linux_arm64.tar.gz"
      sha256 "1793adcf27653dce37f5e454f9f2f083ad4f85962be6cd0451950eb11a54cc81"
    end
    on_intel do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.12/kuukura_2026.10.12_linux_amd64.tar.gz"
      sha256 "93bc674458d2d48be5cbb16277f6da983ea919989ec0117de82909bf79b7c140"
    end
  end

  def install
    bin.install "ku", "kuukura"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ku --version")
  end
end
