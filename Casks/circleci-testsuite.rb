cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.20296-f86a0bf"
  sha256 arm: "13648445850fa545a5e62ce4742f028be1dcb0a1b10babefd7e975a4fb58f4b1",
         intel: "18c429711055b11534a7dd4d8c33ae1adfcc1f37576bd724133553dceb8682be"

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
