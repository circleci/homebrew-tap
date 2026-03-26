cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.28722-74fd8e5"
  sha256 arm: "ed9368792183f6bd3a8d4f60abf311a4653c12e36d1976c55af6815fad697136",
         intel: "f08835356d6f82617479cab95f1cb9d7f82c2b431a5d25829d71f404dc0a19d7"

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
