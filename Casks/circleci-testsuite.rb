cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.41657-0b46131"
  sha256 arm: "772017ddb8ba37b3858b519c74cc38cd4786ba657f0abe2e23dd0abdb0845e5e",
         intel: "1ac5d8928f194499f839b00e3b0d052c66d1dc1e5bd7d2073467a1aed8c7c113"

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
