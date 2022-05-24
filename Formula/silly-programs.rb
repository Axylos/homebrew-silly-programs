class SillyPrograms < Formula
  desc "Fun Silly Programs For Fun Silly People"
  homepage "https://draketalley.com"
  url "https://github.com/Axylos/silly-programs/archive/refs/tags/v0.1.1.beta.3.tar.gz"
  sha256 "cb3a1067f14526109dcb17c29fcdb14d8e1bb698d016554bde7a270b49374a2a"
  license "MIT"

  bottle do
    root_url "https://github.com/Axylos/homebrew-silly-programs/releases/download/silly_programs-0.1.1.beta.3"
    sha256 cellar: :any_skip_relocation, big_sur:      "13cb3cec17f1794d27d597a182a8a354624e0998c70c40d2a9d4fc12b1ef1ad9"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "46cfd94d358b359977b30fd86da4e944136aa1440966ca23912643f6ab3c554b"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--path", "silly-echo", "--root", prefix
    system "cargo", "install", "--path", "silly-tee", "--root", prefix

    man1.install "man/silly-echo.1"
    man1.install "man/silly-tee.1"
  end

  test do
    system "true"
  end
end
