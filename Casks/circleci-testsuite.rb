cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.20949-17b9b66"
  sha256 arm: "a2ed133e4f7d5a7b77c271fbc7c0ad0e4fc23f29ab368a0688e294290a886aad",
         intel: "9b629652c0cb1fe15c3b0c5a863c1584525f4901c604eddfe7686e90d2166cdc"

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
