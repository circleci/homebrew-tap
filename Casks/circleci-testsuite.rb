cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.30608-d12afac"
  sha256 arm: "178e1c8c6da8822cb805d101256cd61bf3a851ce4ab1e6547b78fdc778b89ec6",
         intel: "000c0a8c25d7850df977c069fb575014f3be84af7c1bf323f4d1784d4810da15"

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
