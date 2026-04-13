cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.30533-ea2db6b"
  sha256 arm: "f57fc4ca3dc840ff4589e2b88d878e207d326b8066e8e4f89ed160faf7df76a9",
         intel: "b56977c7a661d6215f3ac931107ed1b52e3615d840a33126a277d372f85f8c68"

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
