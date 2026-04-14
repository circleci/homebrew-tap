cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.30914-6509bc4"
  sha256 arm: "cd94a6abc407e203915592833ac3349141a484a15f04b515e5d26d49982cc9f7",
         intel: "1abe01e6131919c935f2b2a97829204c8d27facd21b2051dcb782d5a3dbc53b1"

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
