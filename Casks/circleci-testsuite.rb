cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.36190-a1e63a9"
  sha256 arm: "58a393355017cbef3de2a607d4836765d35379075bceb7b745ff6dc2362f8efa",
         intel: "8b68d6f2edb2ac3128be530f6319511f21c6145e1f75f2e696b567989cbe4274"

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
