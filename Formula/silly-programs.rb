class SillyPrograms < Formula
  desc "Fun Silly Programs For Fun Silly People"
  homepage "https://draketalley.com"
  url "https://github.com/Axylos/silly-programs/archive/refs/tags/0.1.3.tar.gz"
  sha256 "09f0d7b0458be211c8e8ef09d285d846b4910c9a2401042a5a4688364331de41"
  license "MIT"

  bottle do
    root_url "https://github.com/Axylos/homebrew-silly-programs/releases/download/silly-programs-0.1.2"
    sha256 cellar: :any_skip_relocation, big_sur:      "c16f331ba56af336a887d2ed1c49142c3c76c1eaac79fc7d5c77b857d099238f"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "9ecdc260a26f12c77d4732a5ca4bf2e72ec4cfeb618d1a4f80b2e30c829c7f94"
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
