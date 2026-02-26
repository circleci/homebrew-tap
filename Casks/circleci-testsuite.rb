cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.23298-cc2167b"
  sha256 arm: "d633aa65dc47df842bbf26b39cf718c33bbfcce68f6904787282087f489e8a20",
         intel: "43541b9a21c838f3139d653118b699ebd03201d23f7abc865966afb93088210f"

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
