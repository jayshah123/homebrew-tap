class MitmproxyController < Formula
  desc "System tray controller for mitmproxy"
  homepage "https://github.com/jayshah123/mitmproxy-controller"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jayshah123/mitmproxy-controller/releases/download/v0.3.0/mitmproxy-controller_darwin_arm64.tar.gz"
      sha256 "41bd5e1a5a50ed0419ce4c535c8f70ad40617b15fd28961b393be76426942d27"
    end
  end

  def install
    bin.install "mitmproxy-controller_darwin_arm64" => "mitmproxy-controller"
  end

  test do
    assert_path_exists bin/"mitmproxy-controller"
  end
end
