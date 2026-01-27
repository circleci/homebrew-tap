cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.19882-aaa21a8"
  sha256 arm: "f415f5c4ce7c6499a57a6b9bafd77bf0144adf5c9faabb5da65a6cbe89a60cad",
         intel: "08f1c77eefa5d7e9fcb700053bd06e5e365ac0a3cbe6d918ae5f626dc51bbddb"

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
