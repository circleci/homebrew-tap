cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.43593-7b7f7b6"
  sha256 arm: "1c2ef82a42fb3f4305a022e714c140147d16239448adf952d3dc0b3c4eb4e69a",
         intel: "076501997b9c6913de2793dffe1483379f8e015479e64a553d8b46e2ef003158"

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
