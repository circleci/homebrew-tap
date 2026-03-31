cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.29638-d34fb36"
  sha256 arm: "c62d62879862785bf812a56c94cd95b3f3a6979d30971e2ed8ae679ddea01182",
         intel: "118c19fb77725c629d18de099b1d37a6c7d1a7695397f8e8732cf30e18d91f1b"

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
