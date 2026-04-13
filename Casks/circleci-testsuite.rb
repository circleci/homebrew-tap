cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.30656-521b325"
  sha256 arm: "cfeee83317fdc7fbac4cf522b0286ba0ddeaef36981cc1d93f19dae4827c92dd",
         intel: "643f06fcb8f48bf7469ca3c7ee70c35bd893cc7eba19f50186543bbbfdb22f7d"

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
