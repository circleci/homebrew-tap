cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.32062-9c19bfd"
  sha256 arm: "c80f03579a540f6bc5f4d9418d2a50507f5ab113e816d3e2c07d812db3779600",
         intel: "00acd1f96972119800d6ecb3c1fdc9dbfd4934d7b141c9d46072e61f5b34755b"

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
