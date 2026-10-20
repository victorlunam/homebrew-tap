# Template for Formula/kuukura.rb in victorlunam/homebrew-tap. The release workflow fills in the @...@ values from
# the release's checksums.txt (scripts/homebrew/render.sh); do not edit the tap's copy by hand.
class Kuukura < Formula
  desc "CLI for kuukura, a self-hosted secrets vault for small teams"
  homepage "https://github.com/victorlunam/kuukura"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.3/kuukura_2026.10.3_darwin_arm64.tar.gz"
      sha256 "d45b490ba5ba2ef825072d6dd5d269da56b75c2be4c39f3df5681ebaf0e17220"
    end
    on_intel do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.3/kuukura_2026.10.3_darwin_amd64.tar.gz"
      sha256 "626a7cf82447c480b0b345ed6bdf9babab85aecb9db5a5fc32dd1a69a63e794c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.3/kuukura_2026.10.3_linux_arm64.tar.gz"
      sha256 "800f69bbb08a88ca93fe0c2568b888b0380788f1ce6f87bf90159e81fe7ac5f0"
    end
    on_intel do
      url "https://github.com/victorlunam/kuukura/releases/download/v2026.10.3/kuukura_2026.10.3_linux_amd64.tar.gz"
      sha256 "c23b2b185c6384189fbb9ddb018f6313ec536ed479f231bd5685358c9e177030"
    end
  end

  def install
    bin.install "ku", "kuukura"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ku --version")
  end
end
