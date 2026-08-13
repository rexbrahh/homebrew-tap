class SeshCompresh < Formula
  include Language::Python::Virtualenv

  desc "Transactional local session archiving and allowlisted build-cache cleanup"
  homepage "https://github.com/rexbrahh/sesh-compresh"
  url "https://github.com/rexbrahh/sesh-compresh/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "90ca8dee14790d411c630aa4f36ebb666ff59a22d16e83fe89ae1c7f1033ead0"
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
