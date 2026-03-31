cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.29623-82f0189"
  sha256 arm: "8609127a1ecfe62041fb84072805429f146c5f9710a8593fe403798b104afae5",
         intel: "280e9d87677ecbc11ffa8a71a9b2ae3717ae9595d7065c64c3d32d36603d335f"

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
