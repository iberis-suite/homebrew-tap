class MacCleaner < Formula
  desc "Tiny macOS cleaner: RAM, Trash, apps, large files, caches, temp, dev worktrees, duplicates"
  homepage "https://github.com/chaibialaa/mac-cleaner"
  url "https://github.com/chaibialaa/mac-cleaner/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "eacf7030dcca2ed1a7b97aef25280d6cbe715e2876a14f3b6bf738db95b4ca30"
  license "MIT"

  depends_on :macos

  def install
    bin.install "mac-cleaner"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mac-cleaner --version")
  end
end
