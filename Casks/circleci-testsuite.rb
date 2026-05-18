cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.36793-acecff4"
  sha256 arm: "94eec06dd078e96c3b61ba2c24ecb96afaad88fe2e72d76e4d270a5443f0634f",
         intel: "17697f5c86fd7525017884a9a39a713a97380beb4a9b5bfdf334cd75ef108569"

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
