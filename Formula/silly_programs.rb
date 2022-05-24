class SillyPrograms < Formula
  desc "Fun Silly Programs For Fun Silly People"
  homepage "https://draketalley.com"
  url "https://github.com/Axylos/silly-programs/archive/refs/tags/v0.1.1.beta.3.tar.gz"
  sha256 "cb3a1067f14526109dcb17c29fcdb14d8e1bb698d016554bde7a270b49374a2a"
  license "MIT"

  bottle do
    sha256 cellar: :any_skip_relocation, x86_64_linux: "9515d88a39c98dcd866b000c0f17f49fd46c40462af0b7f212b6d35f4f6e2bdc"
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
