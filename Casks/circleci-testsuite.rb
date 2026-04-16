cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.31695-98a4d6f"
  sha256 arm: "559ca77e96c16f58dae4b7399856d0937cd893e25856693bfbb03950eb98c745",
         intel: "c3a9682e48f818af6bae239da044c1eb96085ac4336ed77f206132067c4d58ab"

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
