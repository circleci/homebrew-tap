cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.35011-3e85eee"
  sha256 arm: "5bb98cbbeae9091dd2087c39d4e62b55136e771b31f1130c5039975353ec7e70",
         intel: "4516f9f1b638a64d537f2eec54d9616d33268f17730d6e5edbac9659c1c835ee"

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
