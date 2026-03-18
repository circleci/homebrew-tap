cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.26695-7b46034"
  sha256 arm: "a4b5fbc9b519f411bdcc80b39629a5a9671e2ddbeb1e5ba01d06790ebda12a25",
         intel: "c430b2da06f7011dbc146164a37b4ca6b19c0a56efaf65e7b56f87b89e01a8ad"

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
