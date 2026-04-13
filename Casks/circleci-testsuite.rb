cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.30515-919a0c9"
  sha256 arm: "f8aee1b8401520f05db4aa492f8bfa70abaa963181d487a277076bec2d485e53",
         intel: "7f231e33959d88ddbc0a7daa6be5ab546fdfb6e7e30446b122a5a018159344db"

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
