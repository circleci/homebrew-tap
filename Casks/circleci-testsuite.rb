cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.30977-d8ce1fc"
  sha256 arm: "cee7dbd6aee27de8c1a9068d18f1e1debc2bfc30d6fee1c128af002587dad923",
         intel: "ef9c4b2b9c609ef31b8ae354551824491c1cfcb793513453ec8f25359996e22b"

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
