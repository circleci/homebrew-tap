cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.45021-1161cdb"
  sha256 arm: "42e63ce045d502f4c2c596c23347becee844aa6c84168a04a847e7ae92ea7214",
         intel: "e5b420b175f68fa5177ea5528f40a49d58c8b3f2586dfc781d0508a80957fea0"

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
