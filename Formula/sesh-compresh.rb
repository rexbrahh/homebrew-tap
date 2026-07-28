class SeshCompresh < Formula
  include Language::Python::Virtualenv

  desc "Transactional local session archiving and allowlisted build-cache cleanup"
  homepage "https://github.com/rexbrahh/sesh-compresh"
  url "https://github.com/rexbrahh/sesh-compresh/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "6af9f5c112507641b213d6d5ea66b370317b0ff948172c53897d679cd071862f"
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
