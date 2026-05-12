cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.36099-17afa5e"
  sha256 arm: "f1fb12e15a62a6f2491b86a70abca3941b165e5830985cef56467ba94372efa5",
         intel: "8d128eab404947e8b578c2f97f5bdf34caff8e64981ecb829b38cace8b926454"

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
