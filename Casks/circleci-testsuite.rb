cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.30932-8692eaa"
  sha256 arm: "beebb8364735931623cd81a887874796ccb6138c7c3faa2e549b1e752ca2b6a7",
         intel: "1e2d8caa57933f0511f8aa60fbf2b74e5b77b5411c169654ab10e8e8225c3ce4"

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
