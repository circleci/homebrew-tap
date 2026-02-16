cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.21744-1219880"
  sha256 arm: "7e1e451728ccd16c53b006376d2527a9eb83fecb5897169f8b4c220937bd55f6",
         intel: "dde361dc6ffd8571a78e2f7d37f9d96f4bc11e700953e05c1e3f4879e00799fa"

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
