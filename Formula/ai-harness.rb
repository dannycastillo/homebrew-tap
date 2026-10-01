# ai-harness.rb — the Homebrew formula for `dannycastillo/tap/ai-harness`.
#
# Lives here for review; a human copies it into dannycastillo/homebrew-tap
# per release, with the url and sha256 below updated (RELEASING.md).
class AiHarness < Formula
  desc "One todo, one branch, one worktree; trunk merged by one verb"
  homepage "https://github.com/dannycastillo/ai-harness"
  url "https://github.com/dannycastillo/ai-harness/releases/download/v0.2.0/ai-harness-0.2.0.tar.gz"
  sha256 "f23f3f8c8857ca6e96d3ffa4003e8c66729efa32548bd2e2a8547e13827ed9bd"
  license "MIT"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"bin/aih"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aih version")
  end
end
