cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.42750-c2e032f"
  sha256 arm: "011e95df7deed6e100171394ed5fb5685bd568d7f706782eb9df7a700971b12f",
         intel: "c0afa0c0b714ddfc0b9928a2f605365744143819115a914b6c3ec40528c71212"

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
