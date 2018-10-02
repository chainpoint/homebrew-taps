class ChainpointNodeCli < Formula
  desc "Command-line Interface (CLI) for managing Chainpoint Nodes"
  homepage "https://github.com/chainpoint/chainpoint-node-cli"
  url "https://github.com/chainpoint/chainpoint-node-cli/releases/download/v0.2.5/chainpoint-node-cli-macos-x64"
  version "0.2.5"
  sha256 "3fed4e836e5b93ddde95d2237bae451f7052a724383d90973360cf65581d8b04"

  bottle :unneeded

  def install
    mv "chainpoint-node-cli-macos-x64", "chainpoint-node"
    bin.install "chainpoint-node"
  end

  test do
    system "#{bin}/chainpoint-node", "version"
  end
end
