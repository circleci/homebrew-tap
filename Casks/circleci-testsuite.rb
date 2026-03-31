cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.29834-0d94023"
  sha256 arm: "96ab3dcd27adcfb7bf0edb829a20f6a11ea9a36e4b273dc9f25c5dc322e40817",
         intel: "d0bd012f70da35becb1dae606f1c06893b83c08e7cd6f4a311a20dced70a5216"

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
