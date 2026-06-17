cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.42007-4592f3a"
  sha256 arm: "8cb7dad6376ea223513d7f5582891be5c4bad1cdfda2783ec4e345d028bed264",
         intel: "393217e14f2537db6b5cc33f06e10c6c325dd92b5318aaa89dd54bc5ef7fb6c6"

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
