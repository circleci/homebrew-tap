cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.33547-7cdb777"
  sha256 arm: "bbd08466cd3a3e29163b8b71bd6c448d72b7b409ffebdce8dc1aaf5d9e65ad48",
         intel: "2d88c0cb86e84351b6bd8f4b639f3641e7118b50c91cbe0a64d5454a7b12114d"

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
