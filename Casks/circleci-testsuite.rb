cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.45331-1ae1ce2"
  sha256 arm: "313a6d84ae67aa784c686ae1d04f7086524123bc39aa40e54aaf49706deb436e",
         intel: "78394c8642a65a8ab95d91796ed131a4e3bb5c04406e66b27f2c9ec566dc62ae"

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
