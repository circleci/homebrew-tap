cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.38605-6bf77ef"
  sha256 arm: "a66d0354a87d566370b247592084f1b054dc60a182c2d56f0ad08599846e42f1",
         intel: "766c04b0779d4ec827e395129db5edcfa3a41bd4732f54822f1ee64d665137e3"

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
