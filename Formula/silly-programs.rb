class SillyPrograms < Formula
  desc "Fun Silly Programs For Fun Silly People"
  homepage "https://draketalley.com"
  url "https://github.com/Axylos/silly-programs/archive/refs/tags/v0.1.1.beta.3.tar.gz"
  sha256 "cb3a1067f14526109dcb17c29fcdb14d8e1bb698d016554bde7a270b49374a2a"
  license "MIT"

  bottle do
    root_url "https://github.com/Axylos/homebrew-silly-programs/releases/download/silly-programs-0.1.1.beta.3"
    sha256 cellar: :any_skip_relocation, big_sur:      "be2f2edc70cda7619c03e2aa55bf934e16125ca449ee0202c5d12bf8629bcd5f"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "82db2fbfd597af8dd0ad3198b5b77adb0a68dbcd02fab101c41687ac2cf5499a"
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
