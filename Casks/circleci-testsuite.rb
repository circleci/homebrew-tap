cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.23347-a19f33d"
  sha256 arm: "5f5fbde064a1fa85bb5cb6a4132caefab1edf148e2cb9c02f61de1db9c74b0d1",
         intel: "1f9d0fab74dce714a12d545ff859ce9f2894316a40155d4230a9eb09ca832f53"

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
