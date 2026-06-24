cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.43680-975ef14"
  sha256 arm: "6c63d0e393ace6163b1af2c79deefb8bfecb565b7fcfd2af011d6c12208291f6",
         intel: "a8cda080448c7ccac09ecb7ed988405f658d3717ca1bc4ee799a86fb03f84c99"

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
