cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.20697-8c9b113"
  sha256 arm: "afb37774a54462099ec5c4d3bbb156f12b0fc106765a8f08ff21259753aed4a8",
         intel: "b019bd259f2aea889ba14643e834f708118d530e0d0ca30480dfc80607939d05"

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
