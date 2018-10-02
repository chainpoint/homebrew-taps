class ChainpointCli < Formula
  desc "Command-line Interface (CLI) for managing timestamp proofs"
  homepage "https://github.com/chainpoint/chainpoint-cli"
  url "https://github.com/chainpoint/chainpoint-cli/releases/download/v1.4.6/chainpoint-cli-macos-x64"
  version "1.4.6"
  sha256 "4fa362c5830cbb93deca8732ae4940374634ad4d3cbda1086eec164613fcdb3e"

  bottle :unneeded

  def install
    mv "chainpoint-cli-macos-x64", "chainpoint"
    bin.install "chainpoint"
    bin.install_symlink "#{bin}/chainpoint" => "chp"
  end

  test do
    system "#{bin}/chainpoint", "version"
  end
end
