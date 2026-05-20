cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.37452-03e8439"
  sha256 arm: "3e8819591f941d89cc94ab250207af6569f2303c39ae7ff29e960be58bfc66e4",
         intel: "ab2d6ae6b5c771bbd0c3ac10bb79772c91af285e93f74cc56d7a4e4ca87eac98"

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
