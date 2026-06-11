cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.40967-be83cd8"
  sha256 arm: "58bfbecf6e83585d023ffc07c4e085a050f8e65acf74a7bad1a78deb7331e0d9",
         intel: "82f45a1d439f7d9cd2c91907089b134473b2545b56c0ee7f2ea6decc3f9650f1"

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
