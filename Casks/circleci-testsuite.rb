cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.20829-3209dbd"
  sha256 arm: "80520204d4cb124e8405cabacf77b3f94e6a88791484d2c32d25c6375df530d2",
         intel: "88b84a22258d201660798b73c096970b44553b84e175fd57eccaeaf879cb4c72"

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
