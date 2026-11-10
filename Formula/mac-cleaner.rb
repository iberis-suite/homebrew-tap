class MacCleaner < Formula
  desc "Tiny macOS cleaner: RAM, Trash, apps, large files, caches, temp, dev worktrees, duplicates"
  homepage "https://github.com/iberis-suite/mac-cleaner"
  url "https://github.com/iberis-suite/mac-cleaner/archive/refs/tags/v1.4.0.tar.gz"
  sha256 "6cf52b27fc8dc36724a6ce0a371e57e3e4b03aa4d9638318703881f86e700a51"
  license "MIT"

  depends_on :macos

  def install
    bin.install "mac-cleaner"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mac-cleaner --version")
  end
end
