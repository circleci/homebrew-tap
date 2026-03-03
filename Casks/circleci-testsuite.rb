cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.23929-5b90023"
  sha256 arm: "1f96e77615885aee07fb7f96b116ea407a2e108c1ff9074a921b0c66279fcb36",
         intel: "9a92abb6f1fe34846c7e5076bbfc72e64c721857938b13dc507d83972dcc97ff"

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
