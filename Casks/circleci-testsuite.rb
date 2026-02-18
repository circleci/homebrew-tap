cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.21854-9f8e22b"
  sha256 arm: "7d8b59d4ac5826b5ab4be075d9232847f584504fd06781f9cc239d96ddf0f2a1",
         intel: "c0c47f4661556a940e79aaf34b06f9a0c4dac4d368c35fe1bf3501688ce5548c"

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
