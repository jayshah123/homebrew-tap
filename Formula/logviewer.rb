class Logviewer < Formula
  desc "ImGui + libuv live log tailer with multi-tab Filter/Highlight views"
  homepage "https://github.com/jayshah123/homebrew-tap"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jayshah123/homebrew-tap/releases/download/logviewer-v0.1.1/logviewer_darwin_arm64.tar.gz"
      sha256 "b621eb11e0ed13f025901e6b980a8b346ba40951440eaa9b983a213d82b9f075"
    end
  end

  def install
    bin.install "LogViewer_darwin_arm64" => "logviewer"
  end

  test do
    assert_path_exists bin/"logviewer"
  end
end
