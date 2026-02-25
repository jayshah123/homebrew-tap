class MitmproxyController < Formula
  desc "System tray controller for mitmproxy"
  homepage "https://github.com/jayshah123/mitmproxy-controller"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jayshah123/mitmproxy-controller/releases/download/v0.1.2/mitmproxy-controller_darwin_arm64.tar.gz"
      sha256 "59d5ef8129a015e26e0f8983d4484731702d9ac68097faaffc22b4953e85fa4c"
    end
  end

  def install
    bin.install "mitmproxy-controller_darwin_arm64" => "mitmproxy-controller"
  end

  test do
    assert_predicate bin/"mitmproxy-controller", :exist?
  end
end
