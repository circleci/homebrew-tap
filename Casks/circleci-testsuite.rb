cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.24248-11a871e"
  sha256 arm: "2cd164bcfd9c8afa6adf0218bf9f7495456b527a3f89dbf190748c799b5b18cb",
         intel: "9f5f1ccf4ffe63de25cab55b5ae6077f2d5714e2d24e7df4f1b8bd9d294a9d59"

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
