cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.22791-6d383ef"
  sha256 arm: "5b45ce335a58cc078c25f5ed0234a421d23e3081d03f1cda8b9add8cff5cf0b3",
         intel: "ecedd46dd41c646252013ff6a0fc82f5e3aed79e49a1f3808b21ce02ef37e701"

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
