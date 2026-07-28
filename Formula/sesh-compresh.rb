class SeshCompresh < Formula
  include Language::Python::Virtualenv

  desc "Transactional local session archiving and allowlisted build-cache cleanup"
  homepage "https://github.com/rexbrahh/sesh-compresh"
  url "https://github.com/rexbrahh/sesh-compresh/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "5ad9bd03b5c7573cb355223107498d4e5be7b3bb71edbbb2aa423c8575eab6fd"
  license "MIT"

  depends_on "python@3.13"
  depends_on "zstd"

  def install
    virtualenv_install_with_resources
  end

  test do
    (testpath/"home").mkpath
    system bin/"sesh-compresh", "--home", testpath/"home", "audit"
  end
end
