cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.20361-4388f7c"
  sha256 arm: "9472e413a11ebdc03aed603d685ec64eb3a88f7f13eb4d5e95425acc470e34ba",
         intel: "5e7630e08523b7f6f1f4e1b45810d984e9f7c71a3d81bf27588e4d5a2cd31340"

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
