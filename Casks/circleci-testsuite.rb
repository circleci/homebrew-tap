cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.38661-e11ecbd"
  sha256 arm: "d9e7755453cbc9ffb71dd833f190a69b0066368a2630a3630470a72b2a502955",
         intel: "2de84ad19ed9d6132497ae4f2dacb31549cff159ffdab4673e95ad44f9a2a9cb"

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
