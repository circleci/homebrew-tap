cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.41622-dc18c07"
  sha256 arm: "4604e658edf31032364bf2866ac79ce0011d18783db0ddf605075464f26d47f2",
         intel: "07de7c2a8618d7bf5ef48a68303f385c66cf0c433e9891b0ab125475e5dc9df2"

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
