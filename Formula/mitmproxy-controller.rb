class MitmproxyController < Formula
  desc "System tray controller for mitmproxy"
  homepage "https://github.com/jayshah123/mitmproxy-controller"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jayshah123/mitmproxy-controller/releases/download/v0.0.1/mitmproxy-controller_darwin_arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "mitmproxy-controller_darwin_arm64" => "mitmproxy-controller"
  end

  test do
    assert_predicate bin/"mitmproxy-controller", :exist?
  end
end
