cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.25633-a137ef1"
  sha256 arm: "6f9d4dc6d9a88375a9759622d7ab7ee9c9bbad76ae266a201c7729f46730ddb4",
         intel: "ef6fd5721cb15826c4ac0dc7bd12846a479304388e50006f17076519a7cb13ec"

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
