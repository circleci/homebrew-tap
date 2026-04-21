cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.32547-a296867"
  sha256 arm: "0c0cc8e7182d52d18debf767b9d7dec8e6dbee14414c53246258f21aece065ae",
         intel: "6c27c256b9dcd81977c00b560107096556073282585238d46990f95e5c92859f"

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
