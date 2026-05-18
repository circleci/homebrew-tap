cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.36619-7ed4288"
  sha256 arm: "38bcb94495db18867fdade196b8d7196e4d30add7fec5d86f13fe38318c80b88",
         intel: "5604a009bdb09ecf85b5b40cf7c5069b2d0e025ed4630336601a63b3e61612ba"

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
