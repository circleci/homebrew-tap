cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.32194-68bf1c0"
  sha256 arm: "4ba34ba8a6d10394fa346683ce3d73f92154ca134935b5fd5a05f36d45a58270",
         intel: "dd3833e7bb3bb40192d1aa6632d60ee7056388c2d4417c403061f70787fae62e"

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
