cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.45297-a8aa047"
  sha256 arm: "5e0fbea2d13d6b79d2664ebb5e3a919bfc4c738ece43b6413b896cf93df929f5",
         intel: "ba596ae8d5d19820b75ae05e53568120cbb71e3307370a0ebd11ad01a3f71d8f"

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
