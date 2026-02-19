cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.22052-c8b9815"
  sha256 arm: "7baf638b4aadc5d73965a7f9e90aa90f6b797db820dc3b4478f8a226d831affd",
         intel: "408c5258d54e44255e3e0857b3498a7da35fd46760a2e081af112b0552771ee5"

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
