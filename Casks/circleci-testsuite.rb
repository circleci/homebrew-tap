cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "0.0.18786-dev-0dc5fb3"
  sha256 arm: "849a0ffb6989796bc60fb2e99b6fc17965b299d5d2da4fb4d3cc044a7b330cea",
         intel: "50b0fac8f0ddb7a9e78a6f3a3534d1c9eb54d799d60353c789594bac19b144ee"

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
