cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.37964-da6529e"
  sha256 arm: "ab4fffde5713170872e655590b77c4ce3ffb975f8406e02a5724084d2e0828f7",
         intel: "f659a0521c3b74161f739c570869d58ef63334f1a251b7598e0a120894b0c062"

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
