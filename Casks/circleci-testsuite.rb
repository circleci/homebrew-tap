cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.29591-3389074"
  sha256 arm: "e9aa24a4ba11441313cf376d4de98d609f0e029838225f56eeb9b92279ce5227",
         intel: "1b6b892a57ed1886b1fad18e6dfbb0052e013e9f94dd117b61a3f21ed866a64a"

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
