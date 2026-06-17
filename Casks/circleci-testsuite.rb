cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.42364-b87b436"
  sha256 arm: "b193a6e1936cc83c00bc9130a99cd703456d8f49367cbb4ad8f508e2349061b2",
         intel: "027e6fe2478f94baaeec6b99d6f3c1969612682e9844326ce67f22a2a52d9de2"

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
