# Template for Formula/kuukura.rb in victorlunam/homebrew-tap. The release workflow fills in the @...@ values from
# the release's checksums.txt (scripts/homebrew/render.sh); do not edit the tap's copy by hand.
class Kuukura < Formula
  desc "CLI for kuukura, a self-hosted secrets vault for small teams"
  homepage "https://github.com/victorlunam/kuukura"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.7/kuukura_2026.10.7_darwin_arm64.tar.gz"
      sha256 "3fbd34a7bb6d44e409fade9110cc862e4e3c5d5042424215034526b34493eb04"
    end
    on_intel do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.7/kuukura_2026.10.7_darwin_amd64.tar.gz"
      sha256 "247489d3b70fd0cd26e23a74db44cd2c8dd69476148ce76de02210c43328b28a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.7/kuukura_2026.10.7_linux_arm64.tar.gz"
      sha256 "b0201cbb2bb7a1ddfb405b484f6f90103df12f97c79202aa54257536d20b853e"
    end
    on_intel do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.7/kuukura_2026.10.7_linux_amd64.tar.gz"
      sha256 "440aefbac377f6fb7045b15c64ca2f93df065a6cd1352847a323bbc2a098bc47"
    end
  end

  def install
    bin.install "ku", "kuukura"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ku --version")
  end
end
