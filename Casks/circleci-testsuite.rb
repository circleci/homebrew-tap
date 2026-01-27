cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.19923-6df3a19"
  sha256 arm: "24a28f561ca57e30a9614e230f6831d55a3a1f9062db125f4c22abb2ecda45ed",
         intel: "0e6f07eeff8af66454c16e3fc0d809e446ca299ced7bc4d86720e3742f60153e"

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
