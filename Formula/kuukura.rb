# Template for Formula/kuukura.rb in victorlunam/homebrew-tap. The release workflow fills in the @...@ values from
# the release's checksums.txt (scripts/homebrew/render.sh); do not edit the tap's copy by hand.
class Kuukura < Formula
  desc "CLI for kuukura, a self-hosted secrets vault for small teams"
  homepage "https://github.com/victorlunam/kuukura"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.14/kuukura_2026.10.14_darwin_arm64.tar.gz"
      sha256 "092fc7a06ba4f6dad4c6b3c39b7955c95551411b66b91323b0c1f37dd2a24200"
    end
    on_intel do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.14/kuukura_2026.10.14_darwin_amd64.tar.gz"
      sha256 "9af9771cb7bbc15cb544b97c695cc92502089cb570a33cbca746d6e3926a4978"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.14/kuukura_2026.10.14_linux_arm64.tar.gz"
      sha256 "6d4d2952194c740196d113e9f513d1339754c70b143fa2561064d8948cf7cc78"
    end
    on_intel do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.14/kuukura_2026.10.14_linux_amd64.tar.gz"
      sha256 "fef442183917ca09d3ac8206670a0c067e44c4b5fc68049ca1bb14e505b842da"
    end
  end

  def install
    bin.install "ku", "kuukura"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ku --version")
  end
end
