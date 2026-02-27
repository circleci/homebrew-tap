cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.23474-89de8a3"
  sha256 arm: "4340aa8a2e559ef808a7173d95fa58d7cea5e70b7b697790a4335717155fc767",
         intel: "145c0e26035c809aa7630ff629331af8618def8250c862c09cf6ab97c1502443"

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
