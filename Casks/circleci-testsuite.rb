cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.41083-2570eeb"
  sha256 arm: "30da8aa82adf70e5234dd882fa5a96d3602352b77cd309e3090f5b24546481cb",
         intel: "71c39916c2d12b738b697a73547fca01a5339a428b064f2ad4803389ef6fa962"

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
