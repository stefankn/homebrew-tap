class PurrviewCli < Formula
  desc "Command line launcher for the Purrview markdown viewer"
  homepage "https://github.com/stefankn/purrview-cli"
  url "https://github.com/stefankn/purrview-cli/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "d0f05cb3fc11aa2557ed3ed36e9b72ea633328c7e2bec43deb97ad77a6bdd338"
  license "MIT"

  def install
    bin.install "purrview"
  end

  test do
    output = shell_output("#{bin}/purrview 2>&1", 1)
    assert_match "Usage: purrview", output
  end
end
