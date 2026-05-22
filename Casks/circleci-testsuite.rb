cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.37661-a1b649e"
  sha256 arm: "1d0ea0b103f0c9e86694b21cd44c8ce4f2f72d005f9ad32dc295096c646d2388",
         intel: "6fce65ba1279935132316649075304939f5dc3b570bf554eec9871264726db8f"

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
