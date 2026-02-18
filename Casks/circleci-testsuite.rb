cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.21925-7b72164"
  sha256 arm: "a88feec4bd688d2ebd6e23db75b3720f01a41815c0d79956cabc464932169edf",
         intel: "5345c32244adc761f182bb84642d78c39da24a4ce6bd0ff4244fb728b5f33ec8"

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
