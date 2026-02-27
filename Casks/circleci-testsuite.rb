cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.23550-13381e3"
  sha256 arm: "d4dd682f79e7e18521433bf24247880a48458b517ffd69b15b0e04e3f5193e93",
         intel: "bf68287ad1c0f3c875fa0549faee729e5336a09e23c967409f00ea1a494dbf3a"

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
