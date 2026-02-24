cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.22577-f43260b"
  sha256 arm: "e9740d4da10b475c2b68d3903f36b6917630adaf65b626f7b25fe3b14c939482",
         intel: "c008c5cc562b06b46e2a67629ce46dee7a258e4372ce7a2a38944ab0d83466d3"

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
