cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.20459-fc481bd"
  sha256 arm: "aec2e4b8a0d63ff2d8c0a619b82ff92a3113c30da0817f13dfb40db7f0831ea3",
         intel: "1bbb0f66eb40e3dcf2e17d70c2d86090b2f83d5e99a06b70408cea9f3eb8400c"

  url "https://circleci-binary-releases.s3.amazonaws.com/circleci-cli-plugins/circleci-testsuite/#{version}/darwin/#{arch}/circleci-testsuite.gz"
  name "CircleCI TestSuite Plugin"
  desc "Plugin for circleci-cli that runs adaptive-testing test suites"
  homepage "https://circleci.com"

  livecheck do
    url :url
    regex(/^\d+(?:\.\d+)+-[0-9a-fA-F]$/i)
  end

  container type: :gzip

  binary "circleci-testsuite"

  # No zap stanza required
end
