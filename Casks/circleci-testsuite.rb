cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.38937-b488568"
  sha256 arm: "310dab96156e224deb9f8071c44728b16c88a18d82907486ff04d59936e11e53",
         intel: "6fd07a0e38c91d5bf99d6fbb081b1777de21cb740f7be5766c19b7359371f4cd"

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
