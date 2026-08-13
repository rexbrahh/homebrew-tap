class SeshCompresh < Formula
  include Language::Python::Virtualenv

  desc "Transactional local session archiving and allowlisted build-cache cleanup"
  homepage "https://github.com/rexbrahh/sesh-compresh"
  url "https://github.com/rexbrahh/sesh-compresh/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "ed2b9d7bf1e35cfdc38387eef0a2d06e0319553f30f2774c85f59c329d43b81f"
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
