cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.45878-89c3dd1"
  sha256 arm: "798b3649f44d82e9b5e8a5184c7cd35e1dd963e6abcc148680c4cc49f7a795dc",
         intel: "f562b0c2bdeed752860a82179f1bb2f8c182e8069b7111878c4854e1883a0b5e"

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
