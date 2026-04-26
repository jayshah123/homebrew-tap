# Homebrew Tap

Homebrew formulae for [jayshah123](https://github.com/jayshah123) projects.

## Installation

```bash
brew tap jayshah123/tap
```

## Available Formulae

| Formula | Description | Platforms |
|---------|-------------|-----------|
| `mitmproxy-controller` | System tray controller for mitmproxy | macOS arm64 |
| `logviewer` | ImGui + libuv live log tailer with multi-tab Filter/Highlight views | macOS arm64 |

## Usage

```bash
# Install directly
brew install jayshah123/tap/mitmproxy-controller
brew install jayshah123/tap/logviewer

# Or tap once, then install short names
brew tap jayshah123/tap
brew install mitmproxy-controller
brew install logviewer
```

### `logviewer`

Launches an ImGui window for tailing a log file with multiple Filter /
Highlight tabs over a single shared source buffer.

```bash
brew install jayshah123/tap/logviewer
logviewer
```

Inside the app:

1. Type or `Browse...` to a log file in **Source Controls**.
2. Toggle **Load existing content on start** if you want the file's existing
   contents loaded once before live-tailing.
3. Click **Start Watching**. New lines appear live; **Stop** halts the watch
   without closing the buffer.
4. Use **Add Tab** to open another view. Each tab has its own:
   - **View Mode** — `Filter` (show only matches) or `Highlight` (show all,
     emphasize matches).
   - Per-mode query input.
   - **Auto-scroll** and **Word wrap** toggles.
   - **Copy Visible** / **Save Visible...** actions.

Source code (private repo): `github.com/jayshah123/cppplayground`. The release
tarball under this tap is fully self-contained — libuv, glfw, glew, ImGui, and
portable-file-dialogs are statically linked, so no runtime Homebrew
dependencies are needed.

### Updating

```bash
brew update                  # refresh all taps
brew upgrade logviewer       # pull the latest version published here
```

### Uninstalling

```bash
brew uninstall logviewer
brew untap jayshah123/tap    # only if no other formulae from this tap remain
```

## Platform Notes

- All formulae here currently ship **macOS arm64** (Apple Silicon) binaries
  only. Intel macOS and Linux are not built today; PRs / issues welcome if
  you need them.
