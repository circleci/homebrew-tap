cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.14138-5fdad3a"
  sha256 arm: "2cf0b8c92e6804446b50bc22a4c2eb913b45335c94addf465331721266b6883c",
         intel: "babeda8c222e022fdacba390c0c6c056339577ce1a66be17d917011d3db9d346"

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
