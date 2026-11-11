class MacCleaner < Formula
  desc "Tiny macOS cleaner: RAM, Trash, apps, large files, caches, temp, dev worktrees, duplicates"
  homepage "https://github.com/iberis-suite/mac-cleaner"
  url "https://github.com/iberis-suite/mac-cleaner/archive/refs/tags/v1.5.0.tar.gz"
  sha256 "32ef6cfe62dc88fc61c8b274e69e6b3c294ee543a174d44176c498b8feb6be4e"
  license "MIT"

  depends_on :macos

  def install
    bin.install "mac-cleaner"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mac-cleaner --version")
  end
end
