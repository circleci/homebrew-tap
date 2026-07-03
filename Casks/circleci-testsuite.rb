cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.45152-7a2ef03"
  sha256 arm: "d7d1578f20980d9b4f87b2fa6deab855b4dc4b7c01abf60b4407c119b07676a9",
         intel: "8e7a55ab76782bf1010288d97ee97f359debfa1004123f717a4d67e794445b45"

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
