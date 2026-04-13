cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.30567-7d2ec7a"
  sha256 arm: "ff52da16f485242ccaa0e3806afbee2395859d4f5f81ab740d2e1e733e164ef7",
         intel: "9099cb2751602a80c5dba4425b0a923e23f566cfc69b29ce8c197120789091ab"

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
