cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.25388-034ea10"
  sha256 arm: "79f733bfbc726ef994c25b6ca9eb9314f07a7bb1a66d9da370f83a1d5540f799",
         intel: "086f2cf97ed5a55244777c76f972c6fb2d2a262a37dda7f568c553426c85427b"

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
