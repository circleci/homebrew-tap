cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.42651-75c04d3"
  sha256 arm: "340be178d5b104c7252c57617508dd022471b54af8436bd373abb83722a43814",
         intel: "860f965f006cf322c513c67d2bca398d698e3ac71ca92f0780d8f22a33585812"

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
