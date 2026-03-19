cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.26881-c088e8c"
  sha256 arm: "3fbc54de4427803079876fc2a39344de6156c130f3189c0813b0b84e266c9aee",
         intel: "9389c3e3ea2f0a72a6aa13a573fd929fbd478caa974f2b7e6d95ebb0ea4e4228"

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
