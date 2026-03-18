cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.26773-93c0ca4"
  sha256 arm: "a26092975563a42459a51c9223384a873a3c636e713bb512f5a4024970c866d2",
         intel: "ceb348a8a1b6fa562dba9feaf795df9b9fbe32c5da17b43773727990cacee501"

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
