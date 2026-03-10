cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.25496-ed0887e"
  sha256 arm: "748370c2fdc3f274072b596a710cdb90cf6152bf623c965822fdfd6e3410e7e6",
         intel: "4f799f1117bfd4e8d428f6c428a35ebef7c98bf7faa4ea42f98a9636b9742883"

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
