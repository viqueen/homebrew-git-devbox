require "language/node"

class GitDevbox < Formula
  desc "Collection of useful git extensions that enhance one's local dev environment"
  homepage "https://github.com/viqueen/git-devbox"
  url "https://registry.npmjs.org/git-devbox/-/git-devbox-2.0.0.tgz"
  sha256 "42d8fd691ca620bee722fbc82ed0351f39c59c352d852dbd588a5af37a305959"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "false"
  end
end
