cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.16930-44f046c"
  sha256 arm: "d8d64cfe08dacbda0823a13fdf6adff4615cecae353b4533ee3be78ba6e3ba0f",
         intel: "ce2d5187783bf5babfb6c25788cfaafa0b8cc145d18fce45791e4ed056e213d2"

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
