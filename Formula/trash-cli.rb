class TrashCli < Formula
  desc "Native macOS trash CLI implemented in Rust"
  homepage "https://github.com/walavave/trash-cli"
  url "https://github.com/walavave/trash-cli/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "069895a6863d7adc309a91d65d07d5f9ef61c85e2050ab4d014aaff2c28aead9"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", *std_cargo_args(path: ".")
  end

  test do
    assert_match "0.0.1", shell_output("#{bin}/trash --version")
  end
end
