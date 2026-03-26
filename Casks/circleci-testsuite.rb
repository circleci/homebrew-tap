cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.28873-3c63115"
  sha256 arm: "e9afdfcfda1af937df902e88e69bcda6163f8ab4a893d081ea7936d7d23d2305",
         intel: "57323758e2490ba07822aea75d8af83da896c56f0930a82a5a202ec777d16bb0"

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
