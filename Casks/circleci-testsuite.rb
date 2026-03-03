cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.24006-88473c3"
  sha256 arm: "c9c9519211eaa6e78c37e0dd9997036cf2c3398f95a6551f4024ca60daff4839",
         intel: "e40e8d1b45992a7ef558bc77ef232c0fc12cff3ed5beb982c51e87fb8d46a6b7"

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
