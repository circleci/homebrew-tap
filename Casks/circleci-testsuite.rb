cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.44413-864b7a1"
  sha256 arm: "a99051cdea4df1954bb8168a65eea855ae08324c7e427ec9c47ee214b5ca7afc",
         intel: "d7800ffa5522eb0674cf7ecdd2a02a91655da7276aad8b44e433fed5248eb8c4"

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
