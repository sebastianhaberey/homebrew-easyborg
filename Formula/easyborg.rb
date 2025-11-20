class Easyborg < Formula
  include Language::Python::Virtualenv

  desc "Easyborg - Borg for Dummies"
  homepage "https://github.com/<youruser>/easyborg"
  url "https://files.pythonhosted.org/packages/source/e/easyborg/easyborg-0.9.1.tar.gz"
  sha256 "9f4ac39da4646f394e2dd947e08a3650c2dd67749a4b349355bf32be54769b6c"
  license "MIT"

  depends_on "python@3.14"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "easyborg", shell_output("#{bin}/easyborg --help")
  end
end
