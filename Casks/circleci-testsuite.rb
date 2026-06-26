cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.44205-511b6d4"
  sha256 arm: "be34e2d9da250c32e59a4a2b64d9b5d3db09db83e4dff2a604a6bf1b27211fc3",
         intel: "51ab07255ce58eee153a5a800394b29040db213a833c9ff10bac22089ba259a1"

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
