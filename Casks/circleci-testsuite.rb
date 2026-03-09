cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.25349-ccdde51"
  sha256 arm: "ff67ba6dc04df77541658f48b7f2596eba22b60aa8eda93af0e69286447620b7",
         intel: "76652fda0a91fc4e05e8ec50cc6765a016ac56e5940d1531eb5122d1c81337bf"

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
