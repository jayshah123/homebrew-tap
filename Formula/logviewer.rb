class Logviewer < Formula
  desc "ImGui + libuv live log tailer with multi-tab Filter/Highlight views"
  homepage "https://github.com/jayshah123/homebrew-tap"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jayshah123/homebrew-tap/releases/download/logviewer-v0.2.2/logviewer_darwin_arm64.tar.gz"
      sha256 "3d4814ffeb8ea245ae4f5cb70d448794b826d5164e5478cd6c8bbabceeb17338"
    end
  end

  def install
    bin.install "LogViewer_darwin_arm64" => "logviewer"
  end

  test do
    assert_path_exists bin/"logviewer"
  end
end
