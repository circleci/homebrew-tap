cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.34105-948bf90"
  sha256 arm: "a1b1d48c36140f93b17ea3b63c40c0587b971077cd5a8da34a5aac8b3ac56082",
         intel: "57e82f3fa7eb98a4ac4c4c603f39b64837694a874a4fa260ea1e99ea64103857"

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
