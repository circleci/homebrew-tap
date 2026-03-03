cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.24141-3f2b6c8"
  sha256 arm: "7116ad34bc04b2c17bf8f2eabda34b892cc031ddf38867792a2422faa5f93a72",
         intel: "cbc5d79edc93290cd84b308ca8bfddcc39433a8c938d8fef84ffbaf521e57f56"

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
