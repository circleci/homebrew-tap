cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.19489-8b5bc2a"
  sha256 arm: "bcd3f0407eba906d891577f895ca9fc93d767b0c66f7bde39851157dcd0af31a",
         intel: "2b39374c75ddd3a7c9d8b5569e7c2b3cf02d185c50aecae1a7d14f521764a404"

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
