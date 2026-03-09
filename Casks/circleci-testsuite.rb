cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.25259-d5b0927"
  sha256 arm: "b56934d152c058047d02170821a7ca31b7dfd8f7a296c9949b364095b727dbd2",
         intel: "0dc405ead58ed6899806b0ee4a604b3ceef8b2a6a7c227afa3b89d58672853a9"

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
