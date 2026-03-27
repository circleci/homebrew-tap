cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.29055-8fca772"
  sha256 arm: "ab4f581da36d7278a317314508a5c68ee3b18a5b898cde0773a77ab6bee2c2bc",
         intel: "9d3844849e34be71c30170113a03c4256b15d3d2d689578b54333c21ccc4e4e1"

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
