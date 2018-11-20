class ChainpointCli < Formula
  desc "Command-line Interface (CLI) for managing timestamp proofs"
  homepage "https://github.com/chainpoint/chainpoint-cli"
  url "https://github.com/chainpoint/chainpoint-cli/releases/download/v1.4.11/chainpoint-cli-macos-x64"
  version "1.4.11"
  sha256 "481dce0ed9ca3497c82659b6b913a5a0937d9addad930819d038aa42306d4d0b"

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
