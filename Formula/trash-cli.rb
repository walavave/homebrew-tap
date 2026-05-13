class TrashCli < Formula
  desc "Native macOS trash CLI implemented in Rust"
  homepage "https://github.com/walavave/trash-cli"
  url "https://github.com/walavave/trash-cli/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "bc7d04caf0b8a79a15ec4d33fef3c464b931d75602749a9c5cb4f9d33cf26057"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match "0.0.2", shell_output("#{bin}/trash --version")
  end
end
