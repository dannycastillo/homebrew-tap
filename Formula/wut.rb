class Wut < Formula
  desc "Search your own command-line notes and copy the result"
  homepage "https://github.com/dannycastillo/wut"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dannycastillo/wut/releases/download/v0.1.0/wut_0.1.0_darwin_arm64.tar.gz"
      sha256 "eefd8c6fe34fb95d9789fbfeab58896a6247da6bec3e1f9733974381db616099"
    end
    on_intel do
      url "https://github.com/dannycastillo/wut/releases/download/v0.1.0/wut_0.1.0_darwin_amd64.tar.gz"
      sha256 "97cc75830f10ebf70a241cc830ad0cc3ca5f224fef0273d27d529444a8c1d059"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dannycastillo/wut/releases/download/v0.1.0/wut_0.1.0_linux_arm64.tar.gz"
      sha256 "42eee221a24ea34c286d4c01c3e4c8ea2b8f1424eecc2918eed8ee9c88bc18a3"
    end
    on_intel do
      url "https://github.com/dannycastillo/wut/releases/download/v0.1.0/wut_0.1.0_linux_amd64.tar.gz"
      sha256 "27f1806799fa95d56cf074e9b2caeacaf97620455718145798bfe790c26b42c5"
    end
  end

  def install
    bin.install "wut"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wut --version")
  end
end
