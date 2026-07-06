cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.45512-21a93c9"
  sha256 arm: "27014b56ef52ae1ee7e0ea248a5a9e541e27996cef308aa593315c60b427079e",
         intel: "0d95575f7f11b5e96de7450f5d928028718c865874896b87124cbba9559446d3"

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
