cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.31988-6d8287e"
  sha256 arm: "5dcdec2178e9ad48ab8ba859fc109c91e4a6be74bf6aba89766e60d2dde71970",
         intel: "9b2afe6b2d7d34f536acea66059bc15f7bff0b0642d32f38a6da9ad11d8e46b6"

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
