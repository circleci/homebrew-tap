cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.42024-5428c68"
  sha256 arm: "23786a5577a3e1d43dacfd64d71b73dd79b304a734c9134a81af04aa9825a86e",
         intel: "d47e89696b2d3ec63bcd49974aaafd2173fe30890a347a8d75778b7c83c53b4a"

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
