class SillyPrograms < Formula
  desc "Fun Silly Programs For Fun Silly People"
  homepage "https://draketalley.com"
  url "https://github.com/Axylos/silly-programs/archive/refs/tags/0.1.3.tar.gz"
  sha256 "09f0d7b0458be211c8e8ef09d285d846b4910c9a2401042a5a4688364331de41"
  license "MIT"

  bottle do
    root_url "https://github.com/Axylos/homebrew-silly-programs/releases/download/silly-programs-0.1.3"
    sha256 cellar: :any_skip_relocation, big_sur:      "f38a78c50650a795727ded43a6729e444dc459ead47fe6bf54edfdd5ead46dfd"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "9c9c72b57218fd51f6d3827e664d09e859fea6922c910b8e6a6de4f97c41a316"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--path", "silly-echo", "--root", prefix
    system "cargo", "install", "--path", "silly-tee", "--root", prefix
    system "cargo", "install", "--path", "silly-seq", "--root", prefix

    man1.install "man/silly-echo.1"
    man1.install "man/silly-tee.1"
    man1.install "man/silly-seq.1"
  end

  test do
    system "true"
  end
end
