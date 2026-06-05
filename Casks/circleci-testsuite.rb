cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.39764-0fcf012"
  sha256 arm: "e22463a5918999f4518d00d91df0eaaca4fefc315d8535208f3a8721c64180e3",
         intel: "155ab25086dcf2c36a77df6958e27694fdb2a8a7103ad78a8b6f44d8f138d961"

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
