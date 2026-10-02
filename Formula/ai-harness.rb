# ai-harness.rb — the Homebrew formula for `dannycastillo/tap/ai-harness`.
#
# Lives here for review; a human copies it into dannycastillo/homebrew-tap
# per release, with the url and sha256 below updated (RELEASING.md).
class AiHarness < Formula
  desc "One todo, one branch, one worktree; trunk merged by one verb"
  homepage "https://github.com/dannycastillo/ai-harness"
  url "https://github.com/dannycastillo/ai-harness/releases/download/v0.2.4/ai-harness-0.2.4.tar.gz"
  sha256 "457fd3282fa888b400368f2bb875b216befafbf4e0f02e117cb3c5058c87515d"
  license "MIT"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"bin/aih"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aih version")
  end
end
