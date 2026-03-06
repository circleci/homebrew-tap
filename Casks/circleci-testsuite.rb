cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.24738-62157e5"
  sha256 arm: "349cac39538c55c3f542629439cb32c7937347b4ca395427975aad7b79328900",
         intel: "0896f834227612f4177674578bfa58c3b1a9dda5ee4b0e658de9671a59ec7b98"

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
