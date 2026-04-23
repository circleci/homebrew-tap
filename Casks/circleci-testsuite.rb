cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.32907-166ffd2"
  sha256 arm: "3d3172a469156bce45389ea1fec210f2dfb3e1c1fefff5bd3b6f4392d553819d",
         intel: "46b3bca19da867b39d3cad9a29e901c9e8737a7356d8dc89f4579ec8d603e5f6"

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
