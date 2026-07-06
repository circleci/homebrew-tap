cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.45488-3c504a1"
  sha256 arm: "f7f2f74ba2c5a8f284fb18b79cdcdc164648680a2304bad420f997075e03d8cd",
         intel: "3905cf514da4294dc22d894a393ae41e1c3041dcf1e419cf15f54f2ae5aa477c"

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
