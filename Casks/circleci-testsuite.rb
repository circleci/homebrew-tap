cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.30500-61c8fb6"
  sha256 arm: "18f8b6fc0322899b92c6014869adbe68aa9ffa25beec9bbf76ce8bcd575448f8",
         intel: "85bf0a4986f00d3c8a686c1e3e503c657edf3eeb4a5c6c3fcdbebdd53c13223f"

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
