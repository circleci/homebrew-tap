cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.28497-2176a45"
  sha256 arm: "d535cbd082c0985c482079480fa6e3f734c3aeebabfe74ed59c45d7a08b24322",
         intel: "c0b720443cdc19e6d03fe86eda5b5e707526864889579a6af3d3eb2e56df36f0"

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
