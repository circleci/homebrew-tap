cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.42464-a07a697"
  sha256 arm: "1f09fc0442c273e1845621e56e47fe39205119aec48d961177de0330359e746f",
         intel: "27b88f839f516d1e64d69efde14b326a0e967e1539ab49a39f071df7cfe2bbc8"

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
