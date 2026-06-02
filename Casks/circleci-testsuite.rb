cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.39038-2d731ee"
  sha256 arm: "0e7a418174521ed58994aed2f3fea8a527f6d9e7deeeee5ee1e993bbbf5337bd",
         intel: "7b90d5f3e25b34e3e0bffd47c380ba5a63133c3f69b7baf5c2e4219f70ce4c8c"

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
