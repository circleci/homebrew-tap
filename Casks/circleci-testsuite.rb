cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.27430-80b9323"
  sha256 arm: "8c9d73220dc165a13e1fbf20a2c2a9b7f6bafb2192203de1a86b2ab1e41bafbb",
         intel: "da62ec8e69e738c1e020d5c0c0e71457221dbae87bfcf5c2bf02fdce31ffb2d9"

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
