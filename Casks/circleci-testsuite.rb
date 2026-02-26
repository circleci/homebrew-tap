cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.23053-20b51e2"
  sha256 arm: "6af6f3f28422e0a2dbbfea7c55922bd89dc50bf2ed5bff5ddaf016f48d091979",
         intel: "958cbcbce88e1a34f7294ec509b41524750b52f6dde6fc78bed7546c0ef50a18"

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
