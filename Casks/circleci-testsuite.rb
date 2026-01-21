cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.19532-b085d3f"
  sha256 arm: "f1a27ebe5ac14401495a2dfdbe705e08c24f215718ce79dfb81a76bd82f34776",
         intel: "5e3224d76b753b88efa316b02ff204a4e1df87f444b299627dae01fe725e0092"

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
