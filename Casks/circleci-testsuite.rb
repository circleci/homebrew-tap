cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.45669-3918f25"
  sha256 arm: "799a8d98f33e5e831de36bd463bfc3cfae05a992a0352a7599f40a4165cd158b",
         intel: "278ffd5b93302dd781f4650d27e01313d6ee2bd06f3d594494c34a73c697a0d8"

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
