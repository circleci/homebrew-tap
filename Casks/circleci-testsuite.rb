cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.20100-efeee44"
  sha256 arm: "5097c1197aeee47a4dc99386119aa310441ff2a1c335782a4e1524a140b9eacf",
         intel: "52f0aa0062921b4fcfe3eb1d366bd38e83bb5df54a699c65148ed6cc0861727b"

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
