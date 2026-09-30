# ai-harness.rb — the Homebrew formula for `dannycastillo/tap/ai-harness`.
#
# Lives here for review; a human copies it into dannycastillo/homebrew-tap
# per release, with the url and sha256 below updated (RELEASING.md).
class AiHarness < Formula
  desc "One todo, one branch, one worktree; trunk merged by one verb"
  homepage "https://github.com/dannycastillo/ai-harness"
  url "https://github.com/dannycastillo/ai-harness/releases/download/v0.1.1/ai-harness-0.1.1.tar.gz"
  sha256 "2bd211c9e7adacfad9986453e36b1f76c016e6f40d2204285f98043c244cc3f4"
  license "MIT"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"bin/aih"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aih version")
  end
end
