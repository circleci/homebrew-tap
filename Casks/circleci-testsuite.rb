cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.44366-65ce9af"
  sha256 arm: "5459b0b56748d279595378a3a68dbf16e47a304abd18ec05b22abf87c3566d3f",
         intel: "0b41197fb35847b116a9e0cafb8e09a441351f03de3efa800050430c0d751b66"

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
