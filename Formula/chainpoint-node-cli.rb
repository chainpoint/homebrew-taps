class ChainpointNodeCli < Formula
  desc "Command-line Interface (CLI) for managing Chainpoint Nodes"
  homepage "https://github.com/chainpoint/chainpoint-node-cli"
  url "https://github.com/chainpoint/chainpoint-node-cli/releases/download/v0.2.6/chainpoint-node-cli-macos-x64"
  version "0.2.6"
  sha256 "71a255e8ac1cabf68caaac0d8e1b17ee8fc8dc17a446021462b5b1cd12c4244f"

  bottle :unneeded

  def install
    mv "chainpoint-node-cli-macos-x64", "chainpoint-node"
    bin.install "chainpoint-node"
  end

  test do
    system "#{bin}/chainpoint-node", "--version"
  end
end
