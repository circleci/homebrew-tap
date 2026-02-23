cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.22456-6fbf479"
  sha256 arm: "bfb3c4218977bc0b149b81ac30c0f0f408ce4c8d5abd13f4b9ad7af01b50acbe",
         intel: "d60d53f988d1529b1387bf63d621f635c77a76c8e86c9fe0b70dd41c6a3afad0"

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
