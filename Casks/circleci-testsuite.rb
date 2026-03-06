cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.25033-ef09723"
  sha256 arm: "1c5a0473cfc79e8f573e9decaec8a4a93faead7003918c85b719d0ed66d7599d",
         intel: "68a0b277874bb5056e035d732d1f10446e54e193447fd9613d9d31bda083b44a"

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
