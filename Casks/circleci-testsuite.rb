cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.43332-afde3bc"
  sha256 arm: "4681e30a7293f721d46852ab33b9edee036a1e6443b6d7923b81c2d346dd845b",
         intel: "dab2ff0c2beeb956ecf2de55fa4113040c648cbf8f3ae20920ba9199032f5b2a"

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
