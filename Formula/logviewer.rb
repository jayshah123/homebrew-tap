class Logviewer < Formula
  desc "ImGui + libuv live log tailer with multi-tab Filter/Highlight views"
  homepage "https://github.com/jayshah123/cppplayground"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jayshah123/cppplayground/releases/download/logviewer-v0.1.0/logviewer_darwin_arm64.tar.gz"
      sha256 "e78b31823503009dd57196a9bf1718939bd9e35347f95c0fd7251f030944e2ad"
    end
  end

  def install
    bin.install "LogViewer_darwin_arm64" => "logviewer"
  end

  test do
    assert_predicate bin/"logviewer", :exist?
  end
end
