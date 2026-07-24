cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.47237-32923fd"
  sha256 arm: "cccdfd3f4d9809c01e6494349a196a9a5d7efc6162d11b27e7ec2adc7ab8149e",
         intel: "e6dd00dada6081d03357eb1e12d4cafcae5e9f0dbd750fc8dd7e701defccac97"

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
