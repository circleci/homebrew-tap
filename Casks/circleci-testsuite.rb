cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.27882-cc1dfbf"
  sha256 arm: "0a70db05c639e0c3151691c1fe8ea91bd8795b52b382ed3953dbfcc87dcf2e5b",
         intel: "9113de27e7be9ed11b23f22172ca256a17aa4ddb3f2d9c4bd00740bf6653a674"

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
