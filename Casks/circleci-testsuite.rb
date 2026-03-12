cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.25853-8690c6d"
  sha256 arm: "f30105fe78ee89b88d82506b37e8b76455f1a0792e60b958197fc9c5d3b5ed6a",
         intel: "d2c97ba5f3a13da1e38d87a5e9108d9d5c83ae43d22a6f4e940aa4e0e3d69348"

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
