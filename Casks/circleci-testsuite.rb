cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.44918-6f073c0"
  sha256 arm: "7b953a888c561bbfc7d59b983828ffd3745d3b740d4425f82cec11171e03c2b1",
         intel: "fb9bcc130d2fe832213d3c2f6efe5cdacb549fd995c140923f60e0aea3ea97e7"

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
