require "language/node"

class Phi < Formula
  desc "Local coding terminal powered by the Claude Agent SDK"
  homepage "https://github.com/rexbrahh/phi"
  url "https://github.com/rexbrahh/phi/releases/download/v1.0.5/phi-1.0.5.tar.gz"
  sha256 "fd8af711fdc5d08942908bf00ef1fa0d519544edebf192c922f7d2cb62781ae1"
  version "1.0.5"

  depends_on "gh"
  depends_on "git"
  depends_on "node"

  def fetch
    system "npm", "ci", "--omit=dev", *std_npm_args(prefix: false)
  end

  def install
    # Older Homebrew builds do not invoke the dependency-fetch hook.
    fetch unless (buildpath/"node_modules").directory?
    libexec.install "dist", "package.json", "package-lock.json", "README.md", "node_modules"
    node_bin = Formula["node"].opt_bin
    (bin/"phi").write_env_script(
      node_bin/"node",
      [opt_prefix/"libexec/dist/src/cli.js"],
      { PATH: "#{node_bin}:#{HOMEBREW_PREFIX}/bin:$PATH" },
    )
  end

  test do
    assert_match "Show this help", shell_output("#{bin}/phi --help")
    assert_equal version.to_s, shell_output("#{bin}/phi --version").strip
  end
end
