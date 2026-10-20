class Logviewer < Formula
  desc "ImGui + libuv live log tailer with multi-tab Filter/Highlight views"
  homepage "https://github.com/jayshah123/homebrew-tap"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jayshah123/homebrew-tap/releases/download/logviewer-v0.2.1/logviewer_darwin_arm64.tar.gz"
      sha256 "3c2e0bea02892d499c04055ab573901f8df7730fdc44943212e8785ec7a8e2cc"
    end
  end

  def install
    bin.install "LogViewer_darwin_arm64" => "logviewer"
  end

  test do
    assert_path_exists bin/"logviewer"
  end
end
