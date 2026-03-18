cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.26840-ae144c4"
  sha256 arm: "3bc35b6f88fb809dc8f87ee0c467c3db695ef2792e06ad4df9297c0bb57451ca",
         intel: "8302696e9ba6b2c39d1c804bac0b00a34533a05ae4c1510f3d1d04b4d2f191db"

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
