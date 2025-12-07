class Easyborg < Formula
  include Language::Python::Virtualenv

  desc "Easyborg - Borg for Dummies"
  homepage "https://github.com/sebastianhaberey/easyborg"
  url "https://files.pythonhosted.org/packages/ee/41/cf609deffdbccaab202db48adfd594d81dc5e5d545785f2ec151c4fa2e6f/easyborg-0.20.1.tar.gz"
  sha256 "d74ca8ce2f8d3223d92f56d91b0d33da8d6f70df1870f1f28657a8264b129e85"
  license "MIT"

  depends_on "borgbackup"
  depends_on "fzf"
  depends_on "python@3.14"

  bottle do
    root_url "https://github.com/sebastianhaberey/easyborg/releases/download/v0.20.1"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "21a4411c11408b323a8968f2b6315c87ac4a2c0e9cf51eb6ae06aa21f5221190"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "ab2c8f4d6fb465235279bf04fc08812210a08a5c194a74cf5eec606ade1b3367"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/c7/21/705964c7812476f378728bdf590ca4b771ec72385c533964653c68e86bdc/pygments-2.19.2-py3-none-any.whl"
    sha256 "86540386c03d588bb81d44bc3928634ff26449851e99741617ecb9037ee5ec0b"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/98/78/01c019cdb5d6498122777c1a43056ebb3ebfeef2076d9d026bfe15583b2b/click-8.3.1-py3-none-any.whl"
    sha256 "981153a64e25f12d547d3426c367a4857371575ee7ad18df2a6183ab0545b2a6"
  end

  resource "cloup" do
    url "https://files.pythonhosted.org/packages/45/0a/494a923f90cd97cdf4fb989cfd06ac0c6745f6dfb8adcef1b7f99d3c7834/cloup-3.0.8-py2.py3-none-any.whl"
    sha256 "6fe9474dc44fa06f8870e9c797f005de1e3ef891ddc1a9612d9b58598a038323"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/94/54/e7d793b573f298e1c9013b8c4dade17d481164aa517d1d7148619c2cedbf/markdown_it_py-4.0.0-py3-none-any.whl"
    sha256 "87327c59b172c5011896038353a81343b6754500a08cd7a4973bb48c6d578147"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/b3/38/89ba8ad64ae25be8de66a6d463314cf1eb366222074cfda9ee839c56a4b4/mdurl-0.1.2-py3-none-any.whl"
    sha256 "84008a41e51615a49fc9966191ff91509e3c40b939176e643fd50a5c2196b8f8"
  end

  resource "platformdirs" do
    url "https://files.pythonhosted.org/packages/cb/28/3bfe2fa5a7b9c46fe7e13c97bda14c895fb10fa2ebf1d0abb90e0cea7ee1/platformdirs-4.5.1-py3-none-any.whl"
    sha256 "d03afa3963c806a9bed9d5125c8f4cb2fdaf74a55ab60e5d59b3fde758104d31"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/25/7a/b0178788f8dc6cafce37a212c99565fa1fe7872c70c6c9c1e1a372d9d88f/rich-14.2.0-py3-none-any.whl"
    sha256 "76bc51fe2e57d2b1be1f96c524b890b816e334ab4c1e45888799bfaab0021edd"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "easyborg", shell_output("#{bin}/easyborg --help")
  end
end