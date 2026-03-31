cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.29818-26bf2b4"
  sha256 arm: "2c027cd1832893f88fc1ef7821643b6def9a4b812a8cb2fdf287d0cc15a28906",
         intel: "3e7bbb1085144d4cee3dc9f2f3f680646f31a581724a6ef6b5e52c08d655e4ab"

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
