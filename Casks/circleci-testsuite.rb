cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.28217-f2e5e17"
  sha256 arm: "a152f519e27805fcb19ec9d2f818d21abb35b6f514a8fd611be1492dd088a97e",
         intel: "3dfb0f0eaea7128b61a819cc3469e817d80216b0458d413c112bc065169b88f1"

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
