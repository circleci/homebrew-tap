cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.21546-a4c9825"
  sha256 arm: "cff567cd65d5f6002e3b4355aa0bb5af43e0cdb24d307d588b1162aea1dc896e",
         intel: "3ef02c9b2d6d7f57ff63dcee2a583c6229c8246a4247a2f8ec227f0af89c84b3"

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
