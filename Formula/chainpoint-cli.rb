class ChainpointCli < Formula
  desc "Command-line Interface (CLI) for managing timestamp proofs"
  homepage "https://github.com/chainpoint/chainpoint-cli"
  url "https://github.com/chainpoint/chainpoint-cli/releases/download/v1.4.7/chainpoint-cli-macos-x64"
  version "1.4.7"
  sha256 "a83fab7afe87e46b49cab8ead5f9eb8a4608183b7e61d0e7e9dbc53c3c6042c9"

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
