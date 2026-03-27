cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.29112-2bc58df"
  sha256 arm: "775a714a08192217c14c6834eb001ee88a23c40096552d6b2bbf80446b94f78a",
         intel: "4cd98f1efe27bb15f0e3e093e41951a26c8664eac43ff88395694e166dfeaa25"

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
