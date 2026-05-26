class MitmproxyController < Formula
  desc "System tray controller for mitmproxy"
  homepage "https://github.com/jayshah123/mitmproxy-controller"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jayshah123/mitmproxy-controller/releases/download/v0.2.0/mitmproxy-controller_darwin_arm64.tar.gz"
      sha256 "74c750b2107fc2a7f96cce0ab5f160aef2e583d7b781cc700889aa106a2684a5"
    end
  end

  def install
    bin.install "mitmproxy-controller_darwin_arm64" => "mitmproxy-controller"
  end

  test do
    assert_predicate bin/"mitmproxy-controller", :exist?
  end
end
