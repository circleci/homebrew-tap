cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.23740-f6dadab"
  sha256 arm: "92047397122952f14bc558ba3d80ae2d50badceca93b0b804a37a1d5cd0c2286",
         intel: "1a910f39f7ee02a10e42516a1a1c0582f13d068a8826acdcacda3d66d5d7c1ad"

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
