cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.41979-1ab5a47"
  sha256 arm: "3447c1872203a6126d8644d6fe2cc5c8a0cdb1c2b07e0163806532429dac33c2",
         intel: "a330b0d9739d60d67fa3fcb60db9e186389c02dba0e1135ca83133575cc89e46"

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
