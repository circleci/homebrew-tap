cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.21789-0a6b0a2"
  sha256 arm: "5c93e0d58f141abce0be1c14fe65445012c0c8bdbd121f1c628c5c960d88d37c",
         intel: "26fd472390cc8b9d677f93dba8eb75ce3f62488dfa47859f8c0de4b3c24ff556"

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
