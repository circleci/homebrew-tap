cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.32575-5cf5ec9"
  sha256 arm: "5491a4fcf4fbbdc90ebada63f3ff000b484ff7d237360cdaaf6d066cf028e69a",
         intel: "5a6bf31cdb4b1400483aa62cd8680209d4a089a2a5487eb5d53db632610df0f2"

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
