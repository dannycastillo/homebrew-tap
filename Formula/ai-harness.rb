# ai-harness.rb — the Homebrew formula for `dannycastillo/tap/ai-harness`.
class AiHarness < Formula
  desc "One todo, one branch, one worktree; trunk merged by one verb"
  homepage "https://github.com/dannycastillo/ai-harness"
  url "https://github.com/dannycastillo/ai-harness/releases/download/v0.1.0/ai-harness-0.1.0.tar.gz"
  sha256 "08aa70a36d1a2e97aa8692084d761c30d6cfa3d83b534dd17e0c1b1083bc9466"
  license "MIT"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"bin/aih"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aih version")
  end
end
