cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.23967-3e79ef8"
  sha256 arm: "a94b100c53619fa843d6188434eaa3c4f74e135b0ba3e721215b2f970cb99765",
         intel: "0ad1734a59788ee7cf2c92529d4f5ed50e652f05f63abed7e505147c30427a11"

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
