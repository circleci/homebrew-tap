cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.44495-4ad18a1"
  sha256 arm: "bcb332c275942d5b372d8800115d5cf1824c4822749fd59a7532fc849acaa35c",
         intel: "4f1cac435cdb0d2479e18603b6c0c99bed6c63acb4a7c9321718268d592a273c"

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
