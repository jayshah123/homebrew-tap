class Logviewer < Formula
  desc "ImGui + libuv live log tailer with multi-tab Filter/Highlight views"
  homepage "https://github.com/jayshah123/homebrew-tap"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jayshah123/homebrew-tap/releases/download/logviewer-v0.2.0/logviewer_darwin_arm64.tar.gz"
      sha256 "4abb388323f92dca52a6280230417cf6bf16e6edb5e3cdfc828e9d4c605a81be"
    end
  end

  def install
    bin.install "LogViewer_darwin_arm64" => "logviewer"
  end

  test do
    assert_path_exists bin/"logviewer"
  end
end
