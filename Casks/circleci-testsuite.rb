cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "0.0.18809-dev-6fa6543"
  sha256 arm: "d66f0abf8fa37e066a1582f6f1413603868c4df4aa31e07610011f9b5bede605",
         intel: "c5bbacf200ff3525d98b6a77e7e791aab243cf417d8a99a3a270e9778c5cb4b8"

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
