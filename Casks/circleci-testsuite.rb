cask "circleci-testsuite" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.30966-5605233"
  sha256 arm: "33cf541407c4bda70f7f9cb31e3545e6dba80c86a6b1fabf1dd5aadbf4deeb9c",
         intel: "e17db162ca129b950bd61a3910cc279d77230b2570a66f91b3700a3b9f1f5408"

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
